class Vehicle

  @@number_of_vehicles = 0

   def initialize
    @@number_of_vehicles += 1
   end

   def age
    "Your #{self.model} is #{years_old} years old."
   end

   private

   def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
   end

   def years_old
    Time.now.year - self.year
   end
end

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
	attr_accessor :color
	attr_reader :year
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Towable
  attr_accessor :color
  attr_reader :year
end

def initialize(y, c, m)
	@year = y
	@color = c
	@model = m
	@current_speed = 0
  @number_of_vehicles += 1
end

def self.gas_mileage(gallons, miles)
	puts "#{miles / gallons} miles per gallon of gas"
end

def speed_up(number)
	@current_speed += number
	puts "You push the gas and accelerate #{number} mph"
end

def brake(number)
	@current_speed -= number
	puts "You brake and decelerate #{number} mph"
end

def current_speed
	puts "You are now going #{@current_speed} mph"
end

def shut_down
	@current_speed = 0
	puts "Let's park this bad boy!"
end

def spray_paint(color)
	self.color = color
	puts "You new #{color} paint job looks great!"
end


def to_s
	"My car is a #{self.color}, #{self.year}, #{@model}!"
end



my_car = MyCar.new("2010", "Lumina", "silver")
puts my_car


puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
 
puts Vehicle.number_of_vehicles
puts lumina.age