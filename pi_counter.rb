require 'pi_piper'

puts "Press the switch to get started"
pin4 = PiPiper::Pin.new(:pin => 4, :direction => :out)
pin5 = PiPiper::Pin.new(:pin => 5, :direction => :out)
pin17 = PiPiper::Pin.new(:pin => 17, :direction => :out)
pin27 = PiPiper::Pin.new(:pin => 27, :direction => :out)


pin17.off
pin27.off

sum = 0

PiPiper.watch :pin => 22, :trigger => :rising do |pin|
  sum += 1
  puts sum

  # get single bits of sum
  pin4.update_value(sum & 0b0001 == 0b0001)
  pin5.update_value(sum & 0b0010 == 0b0010)
  pin17.update_value(sum & 0b0100 == 0b0100)
  pin27.update_value(sum & 0b1000 == 0b1000)
end

PiPiper.wait
