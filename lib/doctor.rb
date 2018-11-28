class Doctor 
  
  @@all = []
  
  attr_accessor :name, :appointments, :patients
  
  def initialize(name)
    @name = name 
    @appointments = []
    @patients = []
    @@all << self
  end 
  
  def new_appointment(date, patient)
    apt = Appointment.new(patient, self, date)
    # # @appointments << apt
    # @patients << patient
  end
  
  def self.all 
    @@all 
  end 
  
end
  