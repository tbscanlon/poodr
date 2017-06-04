chainring = 52 # number of teeth
cog = 11
ratio = chainring / cog.to_f
puts ratio
# Each time your feet push the pedals around once, the wheels travel almost five times

chainring = 30
cog = 27
ratio = chainring / cog.to_f
puts ratio
# Each time your feet push the pedals around once, the wheels travel just over once

# Search for nouns in descriptions to find candidates for classes
# We will create a "gear" class in this example because it has the following behaviours and properties:
# - Chainrigs
# - Cogs
# - a ratio between the two

# Example Gear class
class Gear
  attr_reader :chainrig, :cog
  def initialize(chainrig, cog)
    @chainrig = chainrig
    @cog      = cog
  end

  def ratio
    chainrig / cog.to_f
  end
end

puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio

# this gear class looks pretty good, but now we need to modify it also keep track of the size of the bicycle's rear wheel (gear inches).
# Gear inches is calculated by the folloring formula:
# wheel diameter = rim diameter + twice tire diameter
# gear inches = wheel diameter * gear ratio

class Gear
  attr_reader :chainrig, :cog, :rim, :tire
  def initialize(chainrig, cog, rim, tire)
    @chainrig = chainrig
    @cog      = cog
    @rim      = rim
    @tire     = tire
  end

  def ratio
    chainrig / cog.to_f
  end

  def gear_inches
    # tire goes around rim twice for diameter
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(52, 11, 24, 1.25).gear_inches

puts Gear.new(52, 11).ratio # this now gives an ArugmentError!
# This bug would normally be really bad, but because the program is so small we can ignore it for now.
