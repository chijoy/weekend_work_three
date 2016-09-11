# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(input_options_hash)
    @power = input_options_hash[:power]
    @volume = input_options_hash[:volume]
    @channel = input_options_hash[:channel]
  end
end

class Remote
  attr_accessor :tv

  def initialize(tv_info)
    
    @tv = tv_info[:tv_type]
  end

  def toggle_power
    if tv.power == true
      false
    elsif tv.power == false
      true
    end
  end

  def increment_volume
    tv.volume += 1
  end

  def decrement_volume
    tv.volume -= 1
  end
  
  def set_channel(new_channel)
    tv.channel = new_channel
  end
    
end

# DRIVER CODE:

tv1 = Tv.new(power: true, volume: 1, channel: 2)
puts "Initializing the tv" 
p tv1
puts "Testing whether the tv power is on."
p tv1.power
puts "Testing the tv volume."
p tv1.volume
puts "Testing the tv channel."
p tv1.channel

remote = Remote.new(tv_type: tv1)
puts "Testing whether the remoteis on."
p remote
remote.toggle_power
p tv1.power
remote.increment_volume
remote.increment_volume
p tv1.volume

remote.set_channel(4)
p tv1.channel

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)