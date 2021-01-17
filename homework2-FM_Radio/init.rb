#!/usr/bin/env ruby

require_relative 'classes/radio'
require_relative 'classes/secure_radio'

# Create a FM radio
fm = Radio.fm
puts "FM Radio:"
puts fm.status
puts 

# Change the frequency within range
fm.freq = 105.5
puts "FM Radio with freq = 105.5"
puts fm.status
puts

# Can't change the band
puts "Try to change FM radio band"
begin
  fm.band = 'AM'
rescue
  puts "Can't change the radio band"
end
puts

# Create an AM radio
am = Radio.am
puts "AM Radio:"
puts am.status
puts

# Change the frequency out of range
am.freq = 90.0
puts "AM Radio freq has not changed"
puts am.status
puts

# Create SecureRadio 
radio = SecureRadio.new
puts "Secure Radio:"
puts radio.status
puts

# play radio

radio.play
radio.play
radio.play


