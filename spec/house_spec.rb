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

    it 'returns price and address values' do
      house = House.new('$400000', '123 sugar lane')
      expect(house.price).to eq('$400000')
      expect(house.address).to eq('123 sugar lane')
    end

    it 'returns an empty array on rooms' do
      house = House.new('$400000', '123 sugar lane')
      expect(house.rooms).to eq([])
    end
  end
end
