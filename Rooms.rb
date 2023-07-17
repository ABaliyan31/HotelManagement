$allRooms = {}
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

def createRoom

room1 = Room.new(1,1,1,1)
$rooms << room1
$allRooms[room1.name] = room1 
room2 = Room.new(2,0,1,0)
$rooms << room2
$allRooms[room2.name] = room2 
room3 = Room.new(3,1,0,1)
$allRooms[room3.name] = room3 
$rooms << room3
room4 = Room.new(4,0,1,0)
$rooms << room4
$allRooms[room4.name] = room4 
room5 = Room.new(5,0,0,0)
$rooms << room5
$allRooms[room5.name] = room5 
room6 = Room.new(6,1,0,0)
$rooms << room6
$allRooms[room6.name] = room6 
room7 = Room.new(7,0,1,1)
$rooms << room7
$allRooms[room7.name] = room7 
room8 = Room.new(8,1,1,1)
$rooms << room8
$allRooms[room8.name] = room8 
room9 = Room.new(9,1,0,1)
$rooms << room9
$allRooms[room9.name] = room9 
room10 = Room.new(10,1,1,0)
$rooms << room10
$allRooms[room10.name] = room10 
room11 = Room.new(11,0,1,1)
$rooms << room11
$allRooms[room11.name] = room11 
room12 = Room.new(12,0,0,0)
$rooms << room12
$allRooms[room12.name] = room12 
room13 = Room.new(13,1,1,0)
$rooms << room13
$allRooms[room13.name] = room13 
room14 = Room.new(14,0,1,0)
$rooms << room14
$allRooms[room14.name] = room14 
room15 = Room.new(15,1,0,1)
$rooms << room15
$allRooms[room15.name] = room15 
end
createRoom