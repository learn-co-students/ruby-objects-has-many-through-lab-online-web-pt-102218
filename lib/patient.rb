class Patient
  attr_accessor :appointments
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def new_appointment(doctor, date)
    new_app = Appointment.new(doctor, self, date)
    doctor.appointments << new_app
    self.appointments << new_app
    new_app
  end

  def doctors
    @appointments.reduce([]) do |doctors, app|
      doctors << app.doctor if app.patient == self
    end
  end
  ########### Class methods ############
  
  def self.all
    @@all
  end
  
end