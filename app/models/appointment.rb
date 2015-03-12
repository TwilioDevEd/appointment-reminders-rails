class Appointment < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :time, presence: true

  after_save :notify

  @@REMINDER_TIME = 10.minutes # minutes before appointment

  def when_to_run
    time - @@REMINDER_TIME
  end

  protected
    # Notify our appointment attendee X minutes before the appointment time
    def notify
      @twilio_number = ENV['TWILIO_NUMBER']
      @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
      time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
      reminder = "Hi #{self.name}. Just a reminder that you have an appointment coming up at #{time_str}."
      message = @client.account.messages.create(
        :from => @twilio_number,
        :to => self.phone_number,
        :body => reminder,
      )
      puts message.to
    end

  handle_asynchronously :notify, :run_at => Proc.new { |i| i.when_to_run }
end
