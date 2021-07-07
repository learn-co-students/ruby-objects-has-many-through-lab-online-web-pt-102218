require 'pry'
class Doctor 
  
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
  
  def new_appointment(patient, date)
    new = Appointment.new(patient, self, date)
    @appointment << new 
    new 
  end 
  
  def appointments 
    @appointment 
  end 
  
  def patients 
    @appointment.map do |i| 
      i.patient 
    end 
  end 
  
end 