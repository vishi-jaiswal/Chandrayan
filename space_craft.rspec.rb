require_relative 'space_craft'

RSpec.describe SpaceCraft do
  describe "#move_forward" do
    it "moves the spacecraft forward" do
    	spacecraft = SpaceCraft.new([0, 0, 0], 'N')
    	spacecraft.move_forward
      expect(spacecraft.final_position_and_direction[:position]).to eq([0, 1, 0])
    end
  end
end