class Patient
  
  attr_accessor :name
  
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
   
   def self.all
    @@all
  end
   
   def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end
   
   def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end
   
   def doctors
    Appointment.all.map do |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    end
  end
end