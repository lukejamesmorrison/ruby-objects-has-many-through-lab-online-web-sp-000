class Appointment

  attr_reader :date, :patient, :Doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
  end
end
