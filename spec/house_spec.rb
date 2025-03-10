require './lib/room'
require './lib/house'
require 'pry'

# Iteration 2
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

    it 'tests add_room method from House class' do
      house = House.new('$400000', '123 sugar lane')
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15')
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  # Iteration 3
  describe Room do
    describe 'Iteration 3' do
      it 'tests above_market_average? method in House class to return false' do
        house = House.new('$400000', '123 sugar lane')

        expect(house.above_market_average?).to eq(false)
      end

      it 'tests above_market_average? method in House class to return true' do
        house = House.new('$500001', '123 sugar lane')

        expect(house.above_market_average?).to eq(true)
      end

      it 'adds four rooms with add_room method' do
        house = House.new('$400000', '123 sugar lane')
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)

        expect(house.rooms).to eq([room_1, room_2, room_3, room_4])
      end

      it 'adds four rooms and returns correct rooms from category tested (bedroom)' do
        house = House.new('$400000', '123 sugar lane')
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)

        expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
      end

      it 'adds four rooms and returns correct rooms from category tested (living_room)' do
        house = House.new('$400000', '123 sugar lane')
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)

        expect(house.rooms_from_category(:living_room)).to eq([room_3])
      end

      it 'adds four rooms and returns correct rooms from category tested (basement)' do
        house = House.new('$400000', '123 sugar lane')
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)

        expect(house.rooms_from_category(:basement)).to eq([room_4])
      end

      it 'adds four rooms and calculates house.area' do
        house = House.new('$400000', '123 sugar lane')
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_1)
        house.add_room(room_2)
        house.add_room(room_3)
        house.add_room(room_4)

        expect(house.area).to eq(1900)
      end

      it 'tests details method' do
        house = House.new('$400000', '123 sugar lane')

        expect(house.details).to eq({ 'price' => 400_000, 'address' => '123 sugar lane' })
      end

      it 'tests details method 2' do
        house = House.new('$5648100', '1600 Mockingbird Lane')

        expect(house.details).to eq({ 'price' => 5_648_100, 'address' => '1600 Mockingbird Lane' })
      end
    end
  end

  # Iteration 4
  describe Room do
    describe 'Iteration 4' do
      it 'tests price_by_square_foot method' do
        house = House.new('$400000', '123 sugar lane')
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        room_3 = Room.new(:living_room, 25, '15')
        room_4 = Room.new(:basement, 30, '41')
        house.add_room(room_4)
        house.add_room(room_1)
        house.add_room(room_3)
        house.add_room(room_2)

        expect(house.price_per_square_foot).to eq(210.53)
      end
    end
  end
end
