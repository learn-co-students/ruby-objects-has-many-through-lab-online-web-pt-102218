class Patient
    attr_accessor :name, :appointments
    @@all=[]
    def initialize(name)
        @name = name
        @appointments=[]
        @@all.push(self)
    end

    def new_appointment(doctor,time)
        @appointments.push(Appointment.new(self,doctor,time)).last
    end

    def doctors
        @appointments.map{|appointment|appointment.doctor}
    end
    
    def self.all
        @@all
    end

end