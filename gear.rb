class Gear
  attr_accessor :chairing, :cog, :rim, :tire
  
   def initialize(chairing, cog, rim, tire)
     @chairing = chairing
     @cog      = cog
     @rim      = rim
     @tire     = tire
   end

   def ratio
     chairing / cog.to_f
   end

   def gear_inches
     ratio * (rim + (tire * 2))
   end
end

# puts Gear.new(52, 11).ratio
# puts Gear.new(30, 27).ratio
puts Gear.new(52, 11, 26, 1.5).gear_inches
