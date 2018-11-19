class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @patients = []
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @patients << patient
    @appointments << appointment
  end 
  
  def appointments
    @appointments
  end 
  
  def patients
    @patients
  end 

end 