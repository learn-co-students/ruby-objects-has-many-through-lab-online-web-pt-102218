class Patient 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointment = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date) 
    new = Appointment.new(self, doctor, date)
    @appointment << new 
    new 
  end 
  
  def appointments 
    @appointment
  end 
  
  def doctors 
    @appointment.map do |i| 
      i.doctor 
    end 
  end 
  
end