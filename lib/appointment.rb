
  class Appointment

    attr_accessor :patient, :doctor
    @@all = []

    def initialize(patient, doctor, date)
      @patient = patient
      @patient.appointments << self
      @doctor = doctor
      @doctor.appointments << self
      @date = date
      @@all << self
    end

    def self.all
      @@all
    end

  end
