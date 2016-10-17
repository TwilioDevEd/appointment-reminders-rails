class Appointment < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :time, presence: true

  after_create :reminder

  # Notify our appointment attendee X minutes before the appointment time
  def reminder
    twilio_number = ENV['TWILIO_NUMBER']
    client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.name}. Just a reminder that you have an appointment coming up at #{time_str}."

    client.messages.create(
      from: twilio_number,
      to:   self.phone_number,
      body: reminder
    )
  end

  def when_to_run
    minutes_before_appointment = 30.minutes
    time - minutes_before_appointment
  end

  handle_asynchronously :reminder, run_at: Proc.new { |i| i.when_to_run }
end
