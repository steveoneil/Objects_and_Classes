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
    @x_coord = x_coord.to_i
    @y_coord = y_coord.to_i
    @orientation = orientation.to_s
  end

  def read_instruction(movement)
    puts "Position #{@x_coord}, #{@y_coord}, #{@orientation}"
    case movement
      when "L"
        turn_left
      when "R"
        turn_right
      when "M"
        forward
    end
  end

  def turn_left
    puts "Turning Left"
    case @orientation
      when "N" then new_direction = "W"
      when "W" then new_direction = "S"
      when "S" then new_direction = "E"
      when "E" then new_direction = "N"
    end
    @orientation = new_direction
  end

  def turn_right
    puts "Turning Right"
    case @orientation
      when "N" then new_direction = "E"
      when "E" then new_direction = "S"
      when "S" then new_direction = "W"
      when "W" then new_direction = "N"
    end
    @orientation = new_direction
  end

  def forward
    puts "Moving Forward #{@orientation}"
    @x_coord = @x_coord.to_i
    @y_coord = @y_coord.to_i
    case @orientation
      when "N" then @y_coord += 1
      when "E" then @x_coord += 1
      when "S" then @y_coord -= 1
      when "W" then @x_coord -= 1
    end
  end

end

# Receiving initial data load
data_load = Command.new.receive_input

# Initialize first Rover (Gort1)
gort1 = Rover.new
gort1.x_coord = data_load[1][0]
gort1.y_coord = data_load[1][1]
gort1.orientation = data_load[1][2]

# Loading movment instructions to Gort1
data_load[2].each do |movement|
  gort1.read_instruction(movement)
end

puts "Gort1 Final Position #{gort1.x_coord}, #{gort1.y_coord}, #{gort1.orientation}"

# Initialize first Rover (Gort2)
gort2 = Rover.new
gort2.x_coord = data_load[3][0]
gort1.y_coord = data_load[3][1]
gort1.orientation = data_load[3][2]

# Loading movment instructions to Gort1
data_load[4].each do |movement|
  gort1.read_instruction(movement)
end

puts "Gort1 Final Position #{gort2.x_coord}, #{gort2.y_coord}, #{gort2.orientation}"
