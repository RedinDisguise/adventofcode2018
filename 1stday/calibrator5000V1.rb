#!/usr/bin/env ruby
puts "Hello! It appears you are close to being lost in space and time..."
puts "Well I (Calibrator 5000) can help!"
puts ""

puts "Let me grab those frequency changes..."
puts ""

inputfile = './input.txt'

input = open inputfile

content = input.read

frequency = 0

puts "Calculating your frequency.."
content.each_line do |line|
  frequency = frequency + line.to_i
end

puts "Your frequency is:"
puts frequency
