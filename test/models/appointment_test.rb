require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  def appointment
    @appointment ||= Appointment.new day: 'Monday', start_time: '9:30', end_time: '10:30'
  end

  test 'valid times' do
    ['9:30 pm', '9:30pm', '9:30', '09:30', '09:30 AM', '19:30', '00:30', '23:30'].each do |time|
      appointment.start_time = time
      appointment.end_time = time
      assert appointment.valid?
    end
  end

  test 'invalid times' do
    ['foo', '1:2:3', '9:61 pm', '009:30pm', '29:30', '09:30 GM'].each do |time|
      appointment.start_time = time
      appointment.end_time = time
      refute appointment.valid?
    end
  end

  test 'valid days' do
    appointment.day = 'Tuesday'
    assert appointment.valid?
  end

  test 'invalid days' do
    appointment.day = 'Foo'
    refute appointment.valid?
  end
end
