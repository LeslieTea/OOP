class MyCar
	attr_accessor :year, :color, :model

def initialize(y, c, m)
	@year = y
	@color = c
	@model = m
	@current_speed = 0
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
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed