class Car
  def initialize(brand)
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

  def speed
    @speed
  end

  def accelerate(number)
    @speed += number
  end

  def brake(number)
    @speed -= number
  end

  def stop
    @speed = 0
  end

  def running?
    if @speed > 0
      true
    else
      false
    end
  end

  def status
    if running? == true
      "#{@brand} running at #{@speed} km/h"
    else
      "#{@brand} stopped"
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
