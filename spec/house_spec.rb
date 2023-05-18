require './lib/room'
require './lib/house'
require 'pry'

# Iteration 1
RSpec.describe Room do
  describe 'Iteration 2' do
    it 'exists' do
      house = House.new('$400000', '123 sugar lane')
      expect(house).to be_a House
    end
  end
end
