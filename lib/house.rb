class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    price = @price.gsub(/[^\d]/, '').to_i
    return true if price > 500_000

    false
  end

  def rooms_from_category(category)
    result = []
    @rooms.each do |room|
      result << room if room.category == category
    end
    result
  end
end
