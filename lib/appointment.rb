class Appointment 
  @@all = []
  
  def initialize(patient, date, doctor) 
    @patient = patient
    @date = date 
    @doctor = doctor
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def patient 
    @patient
  end
  
  def doctor 
    @doctor
  end 
end 
