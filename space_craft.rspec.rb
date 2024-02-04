require_relative 'space_craft'

RSpec.describe SpaceCraft do
  describe "#move_forward" do
    it "moves the spacecraft forward" do
    	spacecraft = SpaceCraft.new([0, 0, 0], 'N')
    	spacecraft.move_forward
      expect(spacecraft.final_position_and_direction[:position]).to eq([0, 1, 0])
    end
  end
  describe "#move_backward" do
    it "moves the spacecraft backward" do
      spacecraft = SpaceCraft.new([0, 0, 0], 'N')
      spacecraft.move_backward
      expect(spacecraft.final_position_and_direction[:position]).to eq([0, -1, 0])
    end
  end

  describe "#turn_left" do
    it "turns the spacecraft left" do
      spacecraft = SpaceCraft.new([0, 0, 0], 'N')
      spacecraft.turn_left
      expect(spacecraft.final_position_and_direction[:direction]).to eq('W')
    end
  end

  describe "#turn_right" do
    it "turns the spacecraft right" do
      spacecraft = SpaceCraft.new([0, 0, 0], 'N')
      spacecraft.turn_right
      expect(spacecraft.final_position_and_direction[:direction]).to eq('E')
    end
  end

  describe "#turn_up" do
    it "turns the spacecraft up" do
      spacecraft = SpaceCraft.new([0, 0, 0], 'N')
      spacecraft.turn_up
      expect(spacecraft.final_position_and_direction[:direction]).to eq('Up')
    end
  end

  describe "#turn_down" do
    it "turns the spacecraft down" do
      spacecraft = SpaceCraft.new([0, 0, 0], 'N')
      spacecraft.turn_down
      expect(spacecraft.final_position_and_direction[:direction]).to eq('Down')
    end
  end

  describe "#process_commands" do
    it "processes a sequence of commands" do
      spacecraft = SpaceCraft.new([0, 0, 0], 'N')
      spacecraft.process_commands(['f', 'r', 'u', 'b', 'l'])
      expect(spacecraft.final_position_and_direction[:position]).to eq([0, 1, -1])
      expect(spacecraft.final_position_and_direction[:direction]).to eq('N')
    end
  end
end