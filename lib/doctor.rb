class Doctor
  attr_accessor :name, :appointments,:patients
  def initialize(name)
    @name = name
    @appointments =[]
    @patients=[]
   end
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    patients << appointment.patient
  end
def patients
    self.appointments.collect do |appointment|
      appointment.patient
   end
  end
end
