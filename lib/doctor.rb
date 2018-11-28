class Doctor
    attr_reader :name, :appointments
    @@all=[]
    def initialize(name)
        @name=name
        @appointments = []
        @@all.push(self)
    end

    def new_appointment(patient,time)
        @appointments.push(Appointment.new(patient,self,time)).last
    end
    
    def patients
        @appointments.map{|appointment| appointment.patient}
    end

    def self.all
        @@all
    end
end