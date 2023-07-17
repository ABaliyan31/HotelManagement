$all_rooms = {}
$rooms = []
class Room
    attr_accessor :name, :ac, :BedType, :Balcony, :cost, :occupied 
  def initialize(name, ac , bedtype , balcony)
    @name = name
    @ac = ac
    @BedType = bedtype
    @Balcony = balcony
    @cost = 700 + (500*ac.to_i) + (300*bedtype.to_i) + (500*balcony.to_i)
    @occupied = 0
  end
end

def create_room

room1 = Room.new(1,1,1,1)
$rooms << room1
$all_rooms[room1.name] = room1 
room2 = Room.new(2,0,1,0)
$rooms << room2
$all_rooms[room2.name] = room2 
room3 = Room.new(3,1,0,1)
$all_rooms[room3.name] = room3 
$rooms << room3
room4 = Room.new(4,0,1,0)
$rooms << room4
$all_rooms[room4.name] = room4 
room5 = Room.new(5,0,0,0)
$rooms << room5
$all_rooms[room5.name] = room5 
room6 = Room.new(6,1,0,0)
$rooms << room6
$all_rooms[room6.name] = room6 
room7 = Room.new(7,0,1,1)
$rooms << room7
$all_rooms[room7.name] = room7 
room8 = Room.new(8,1,1,1)
$rooms << room8
$all_rooms[room8.name] = room8 
room9 = Room.new(9,1,0,1)
$rooms << room9
$all_rooms[room9.name] = room9 
room10 = Room.new(10,1,1,0)
$rooms << room10
$all_rooms[room10.name] = room10 
room11 = Room.new(11,0,1,1)
$rooms << room11
$all_rooms[room11.name] = room11 
room12 = Room.new(12,0,0,0)
$rooms << room12
$all_rooms[room12.name] = room12 
room13 = Room.new(13,1,1,0)
$rooms << room13
$all_rooms[room13.name] = room13 
room14 = Room.new(14,0,1,0)
$rooms << room14
$all_rooms[room14.name] = room14 
room15 = Room.new(15,1,0,1)
$rooms << room15
$all_rooms[room15.name] = room15 
end
create_room