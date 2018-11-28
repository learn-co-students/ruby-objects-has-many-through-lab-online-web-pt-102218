class Appointment
    attr_reader :patient,:doctor,:date
    @@all = []
    def initialize(patient,doctor,date)
        @doctor=doctor
        @patient=patient
        @date=date
        @@all.push(self)
    end
    def self.all
        @@all
    end
end