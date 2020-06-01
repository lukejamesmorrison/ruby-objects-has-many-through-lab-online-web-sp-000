class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.filter { |appt| appt.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

end
