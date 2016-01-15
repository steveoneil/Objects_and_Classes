class Command

  def receive_input
    input_data = []
    # Receiving plateau size (x-size, y-size)
    input_data [0] = gets.split(" ")
    # Receiving Rover1's current position (x-coord y-coord orientation(N,E,S,W)"
    input_data [1] = gets.split(" ")
    # Receiving Rover1's movement instructions (LRM)"
    input_data [2] = gets.chomp.split(//)
    # Receiving Rover2's current position (x-coord y-coord orientation(N,E,S,W)"
    input_data [3] = gets.split(" ")
    # Receiving Rover2's movement instructions (LRM)"
    input_data [4] = gets.chomp.split(//)

    input_data
  end

end

class Rover
  attr_accessor :x_coord, :y_coord, :orientation

  def initialize (x_coord=0, y_coord=0, orientation="N")
    @x_coord = x_coord
    @y_coord = y_coord
    @orientation = orientation
  end

  def read_instruction(movement)
    case movement
      when "L"
        turn_left
      when "R"
        turn_right
      when "M"
        forward
    end
  end

  def turn_right
    puts "Turning Right"
  end

  def turn_left
    puts "Turning Left"
  end

  def forward
    puts "Moving Forward"
  end

end

# Receiving initial data load
data_load = Command.new.receive_input

# Initialize first Rover (Gort1)
gort1 = Rover.new
gort1.x_coord = data_load[1][0]
gort1.y_coord = data_load[1][1]
gort1.orientation = data_load[1][2]

# puts "x=#{gort1.x_coord} y=#{gort1.y_coord} o=#{gort1.orientation}"

# Loading movment instructions to Gort1
data_load[2].each do |movement|
  gort1.read_instruction(movement)
end
