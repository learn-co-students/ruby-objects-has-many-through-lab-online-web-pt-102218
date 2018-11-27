require 'pry'
class Doctor

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def name
  @name
end

def new_appointment(patient, date)
  Appointment.new(patient, self, date)
end

def appointments
  Appointment.all.select {|appointment| appointment.doctor == self }
end

def patients
  appointments.select {|appointment| self.appointments == appointment}
end

end
