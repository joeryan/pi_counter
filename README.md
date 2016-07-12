# pi_counter
Raspberry pi 4 bit counter based on the [2-bit counter](https://github.com/jwhitehorn/pi_piper/blob/master/examples/2_bit_counter/2_bit_counter.rb) using [pi_piper](https://github.com/jwhitehorn/pi_piper) by [Jason Whitehorn](https://github.com/jwhitehorn)

A simple 4 bit counter as a quick hardware demo

parts required:

- 4 LEDs
- 4 330 OHM resistors
- 1 switch
- 1 10K OHM resistor
 
wiring diagram:
[wiring diagram image](http://www.communitycomputing.club/wp-content/uploads/2016/07/diagram.gif)

Wire an LED and 330 OHM resistor to each of pins 7, 11, 13, 29 (GPIO4, GPIO17, GPIO27, and GPIO5)

Wire the switch to pin 15 (GPIO22) and the 10K Ohm Resistor to 3.3V and the other side of the switch to ground.  I added a fifth LED and 330 Ohm resistor on the second pole of the switch to visually display the switch position.
