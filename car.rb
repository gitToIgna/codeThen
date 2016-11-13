class Car
  def initialize(brand, speed = 0)
    @brand = brand
    @speed = 0
  end

#attr_accessor de brand mostrando en su lugar sus métodos explícitos
  # def brand=(value)
  #   @brand = brand
  # end
  #Retorna brand getter
  def brand
    @brand
  end

#attr_accessor de speed mostrando en su lugar sus métodos explícitos
  # def speed=(value)
  #   @speed = speed
  # end
  #Retorna speed getter
  def speed
    @speed
  end

#Retorna incremento de speed en x
  def accelerate(number)
    @speed = @speed + number
    @speed
  end

#Retorna decrecimiento de speed en x
  def brake(number)
    @speed = @speed - number
    @speed
  end

#Retorna speed = 0
  def stop
    @speed = 0
  end

#Retorna true si el coche tiene speed y false si no tiene (Creo que estoy devolviendo strings, no booleanos reales. No me salía la sintaxi,
#pero lo he intentado solucinar así jeje)
  def running?
    @speed == 0 ? "False" : "True"
  end

#Renorna brand y stopped si el coche está detenido o el brand y su velocidad si no lo está
  def status
    if @speed == 0
      print "#{@brand} stopped"
    else
      print "#{@brand} running at #{@speed} km/h"
    end
  end

end

car1 = Car.new("Ferrari")

puts car1.brand
puts car1.speed

car1.accelerate(5)
puts car1.running?
puts car1.speed
car1.brake(2)
puts car1.speed
puts car1.running?
car1.stop
puts car1.speed
puts car1.running?
puts car1.status
car1.accelerate(300)
puts car1.status
