class Rover
  attr_accessor :x_coord, :y_coord, :orientation

  def initialize (x_coord, y_coord, orientation)
    @x_coord = x_coord
    @y_coord = y_coord
    @orientation = orientation
  end

  def read_instruction
    puts "Reading instruction"
  end

  def turn
    puts "Turning"
  end

  def move
    puts "Moving"
  end

gort1 = Rover.new(0,0,"N")
gort1.read_instruction
gort1.turn
gort1.move

end
