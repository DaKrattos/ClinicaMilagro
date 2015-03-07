require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "an appointment can not be saved without a doctor" do
    appointment = Appointment.create
    assert_not appointment.save
  end
  
  test "an appoinment can not be saved without a patient" do
    doctor = users(:one)
    assert_not Appointment.create(doctor: doctor).save
  end
end
