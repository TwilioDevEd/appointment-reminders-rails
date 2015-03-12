json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :phone_number, :time
  json.url appointment_url(appointment, format: :json)
end
