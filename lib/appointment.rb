class Appointment
  attr_accessor :doctor, :patient, :date
  
  @@all = []
  
  def initialize(doctor, patient, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end
  
  ########### Class methods ############
  
  def self.all
    @@all
  end
  
end