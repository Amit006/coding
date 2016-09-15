

class Treasure < Thing
  def initialize(a,b,c,d,e)
  super(a,b)
  puts("from  Class Treasure #{c},#{d},#{e}")
  end
def intro(word)
  returns "hi there its a Treasure class object call::  #{word} "
end
end



obj=Treasure.new(amit, babai, chotu, dude, emi)

puts(obj.intro('its executing'))