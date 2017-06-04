class Gear
  attr_reader :chainrig, :cog # Hiding instance vars behind reader methods
  def initialize(chainring, cog)
    @chainring = chainring
    @cog      = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

class ObscuringReferences
  attr_reader :data,
  def initialize(data)
    @data = data
  end

  def diameters
    # 0 is rim, 1 is tire
    data.collect { |cell| cell[0] + (cell[1] * 2)}
  end

  # ... many other methods that index into the array
end

# The above is very bad because of the array references.
# If the array structure changes, then the diameters method falls apart.
# Using data structures with references like thing[0] and thing[1] will make a program fall apart with hard-to-find bugs.
# Direct references into complicated structures obscure what the data really is.
# Use a Struct to make sense of complicated data structures

class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end

  # first - iterate over the array
  def diameters
    wheels.collect { |wheel| diameter(wheel)}
  end

  # second, calculate diameter of ONE wheel
  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end
  # now everyone can send rim/tire to wheel

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect {|cell| Wheel.new(cell[0], cell[1])}
  end
end

# A feature request was received: the user wants to be able to calculate the wheel's circumference. Using that information, we decide to split Wheel into its own class to keep Gear with a single responsibility.
# The final result, after splitting Wheel into its own class
class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim  = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(52, 11, @wheel).gear_inches

puts Gear.new(52, 11).ratio

# This code isn't perfect, but that doesn't matter. What's important is that the code is *good enough*.
