class Doctor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @@all << self
        @name = name
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def patients
        appointments.collect{|appointment| appointment.patient}
    end

end