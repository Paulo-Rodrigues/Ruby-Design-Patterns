class Switch
  attr_accessor :state

  def initialize
    @state = Offstate.new
  end

  def on
    @state.on(self)
  end

  def off
    @state.off(self)
  end
end

class State
  def on(switch)
    puts "Light is on"
  end

  def off(switch)
    puts "Light is off"
  end
end

class OnState < State
  def initialize
    puts "light turning on"
  end

  def off(switch)
    puts 'turning light off'
    switch.state = Offstate.new
  end
end

class Offstate < State
  def initialize
    puts "light turned off"
  end

  def on(switch)
    puts 'Turning light on'
    switch.state = OnState.new
  end
end

sw = Switch.new
sw.on
puts "***************"
sw.off
puts "***************"
sw.off
