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

    it 'returns correct values when creating two rooms' do
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')

      expect(room_1).to be_a Room
      expect(room_1.category).to eq(:bedroom)
      expect(room_1.length).to eq(10)
      expect(room_1.width).to eq('13')

      expect(room_2).to be_a Room
      expect(room_2.category).to eq(:bedroom)
      expect(room_2.length).to eq(11)
      expect(room_2.width).to eq('15')
    end
  end
end
