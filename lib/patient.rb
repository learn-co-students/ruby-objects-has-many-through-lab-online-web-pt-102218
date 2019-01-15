class Patient
  attr_accessor :name, :doctor, :appointment
  
  @@all = [ ]
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = [ ]
  end 
  
  def new_appointment(date, doctor)
    a = Appointment.new(date, self, doctor)
    @appointments << a 
    a 
  end 
    
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end 
  end 
  
  def doctors 
    appointments.collect do |appointment|
      appointment.doctor 
    end
  end 
  
end