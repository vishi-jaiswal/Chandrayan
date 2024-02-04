class SpaceCraft
	def initialize(starting_point, initial_direction)
    @position = starting_point
    @direction = initial_direction
  end

  def move_forward
    case @direction
    when 'N'
      @position[1] += 1
    when 'S'
      @position[1] -= 1
    when 'E'
      @position[0] += 1
    when 'W'
      @position[0] -= 1
    when 'Up'
      @position[2] += 1
    when 'Down'
      @position[2] -= 1
    end
  end

  def final_position_and_direction
    { position: @position, direction: @direction }
  end
end