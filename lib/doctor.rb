require "pry"

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointments.all.map do |appointment|
      if appointment.doctor = self
        appointment
      end
    end
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end

end
