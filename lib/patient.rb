class Patient

    attr_accessor :name, :appointments, :doctors
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
      @appointments = []
    end

    def new_appointment(doctor, date)
      appointment = Appointment.new(self, doctor, date)
    end

    def self.all
      @@all
    end

    def appointments
      @appointments
    end

    def doctors
      self.appointments.collect do |appointment|
      appointment.doctor
      end
    end

end
