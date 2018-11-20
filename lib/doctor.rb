class Doctor
  
  attr_accessor :appointments
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def new_appointment(patient, date)
    new_app = Appointment.new(self, patient, date)
    @appointments << new_app
    patient.appointments << new_app
    new_app
  end
  
  def patients
    @appointments.reduce([]) do |patients, app|
      patients << app.patient if app.doctor == self
    end
  end
  
  ########### Class methods ############
  
  def self.all
    @@all
  end
  
  
end