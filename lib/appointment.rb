require 'pry'

class Appointment 
  
  @@all = []
  attr_accessor :patient, :doctor, :date
  
  def initialize(date, doctor, patient)
    @patient = patient 
    @doctor = doctor 
    @date = date
    @@all << self
    doctor.appointments << self
    doctor.patients << patient
    patient.appointments << self
    patient.doctors << doctor
  end 
  
  def self.all 
    @@all 
  end
  
end