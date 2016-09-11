# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

# DRIVER CODE:

puts "Testing the ability to change a room number..."
hotel = HotelReservation.new({customer_name: "joy", date: "08/09/2016", room_number: "215", amenities: []})

hotel = HotelReservation.new({customer_name: "joy", date: "08/09/2016", room_number: "212", amenities: []})

if hotel.room_number == "212"
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-" * 20
puts "Testing add_a_fridge method...."
hotel.add_a_fridge

if hotel.amenities.include?("fridge")
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-" * 20
puts "Testing add_a_crib method...."
hotel.add_a_crib

if hotel.amenities.include?("crib")
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-" * 20
puts "Testing add_a_custom_amenity...."
hotel.add_a_custom_amenity("fresh flowers")

if hotel.amenities.include?("fresh flowers")
  puts "PASS!"
else
  puts "FAIL!"
end
# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

