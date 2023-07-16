require './DashBoard'
$rooms = []
class Room
  def initialize(name, ac , bedtype , balcony)
    @name = name
    @ac = ac
    @BedType = bedtype
    @Balcony = balcony
    @cost = 700 + (500*ac.to_i) + (200*bedtype.to_i) + (400*balcony.to_i)
    @occupied = 0
  end
end
def createRoom

room1 = Room.new(1,1,1,1)
$rooms << room1
room2 = Room.new(2,0,1,0)
$rooms << room2
room3 = Room.new(3,1,0,1)
$rooms << room3
room4 = Room.new(4,0,1,0)
$rooms << room4
room5 = Room.new(5,0,0,0)
$rooms << room5
room6 = Room.new(6,1,0,0)
$rooms << room6
room7 = Room.new(7,0,1,1)
$rooms << room7
room8 = Room.new(8,1,1,1)
$rooms << room8
room9 = Room.new(9,1,0,1)
$rooms << room9
room10 = Room.new(10,1,1,0)
$rooms << room10
room11 = Room.new(11,0,1,1)
$rooms << room11
room12 = Room.new(12,0,0,0)
$rooms << room12
room13 = Room.new(13,1,1,0)
$rooms << room13
room14 = Room.new(14,0,1,0)
$rooms << room14
room15 = Room.new(15,1,0,1)
$rooms << room15
end
createRoom
obj = DB.new()
obj.UserDashBoard
