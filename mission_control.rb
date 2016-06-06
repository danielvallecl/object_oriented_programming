#Mars Rover#

require_relative "mars_rover"

class Control

  attr_reader :rovers

  def initialize
    @rovers = []
  end

  def clean_input(input)
    new_input = input.split(',')
  end

  def add_rover(coordinates)
    rover = Rover.new(clean_input(coordinates))
    @rovers.push(rover)
  end

  def move(movement)
    movement.each_char do |chr|
      if chr == "M"
        @rovers[0].move
      elsif chr == "L" || chr == "R"
        @rovers[0].turn(chr)
      end
    end
 end
end #Control Ends#

#Instantiating Rovers#

mission_control = Control.new

mission_control.add_rover('9,4,N')
mission_control.move("LM")

puts mission_control.rovers[0].x
puts mission_control.rovers[0].y
puts mission_control.rovers[0].direction
