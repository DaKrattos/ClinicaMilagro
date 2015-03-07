json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :doctor_id, :patient_id, :description, :state, :date, :hour
  json.url appointment_url(appointment, format: :json)
end
