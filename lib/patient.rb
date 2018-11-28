class Patient 
  
  @@all = []
  attr_accessor :name, :appointments, :doctors
  
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def new_appointment(doctor, date)
    apt = Appointment.new(date, doctor, self)
    @appointments << apt
    apt
  end
  
end 
