class Doctor
  attr_accessor :name, :patient, :appointment  
  
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = [ ]
  end 
    
  def new_appointment(date, patient)
    a = Appointment.new(date, self, patient)
    @appointments << a
    a
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end  
  
  def patients
    appointments.collect do |appointment|
      appointment.patient
    end 
  end  
  
end 
