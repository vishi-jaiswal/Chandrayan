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

  def move_backward
    case @direction
    when 'N'
      @position[1] -= 1
    when 'S'
      @position[1] += 1
    when 'E'
      @position[0] -= 1
    when 'W'
      @position[0] += 1
    when 'Up'
      @position[2] -= 1
    when 'Down'
      @position[2] += 1
    end
  end

  def turn_left
    case @direction
    when 'N'
      @direction = 'W'
    when 'S'
      @direction = 'E'
    when 'E'
      @direction = 'N'
    when 'W'
      @direction = 'S'
    when 'Up'
      @direction = 'N'
    when 'Down'
      @direction = 'S'  
    end
  end

  def turn_right
    case @direction
    when 'N'
      @direction = 'E'
    when 'S'
      @direction = 'W'
    when 'E'
      @direction = 'S'
    when 'W'
      @direction = 'N'
    end
  end

  def turn_up
    return unless @direction == 'N' || @direction == 'E'

    @direction = 'Up'
  end

  def turn_down
    return unless @direction == 'N' || @direction == 'S'

    @direction = 'Down'
  end

  def process_commands(commands)
    commands.each do |command|
      case command
      when 'f'
        move_forward
      when 'b'
        move_backward
      when 'l'
        turn_left
      when 'r'
        turn_right
      when 'u'
        turn_up
      when 'd'
        turn_down
      end
    end
  end
  def final_position_and_direction
    { position: @position, direction: @direction }
  end
end


starting_point = [0, 0, 0]
initial_direction = 'N'
commands = ["f", "r", "u", "b", "l"]

spacecraft = SpaceCraft.new(starting_point, initial_direction)
spacecraft.process_commands(commands)

result = spacecraft.final_position_and_direction
puts "Final Position: #{result[:position]}"
puts "Final Direction: #{result[:direction]}"
