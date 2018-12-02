#!/usr/bin/env ruby
puts "Hello! It appears you are close to being lost in space and time..."
puts "Well I (Calibrator 5000 v2) can help!"
puts ""

puts "Let me grab those frequency changes..."
puts ""

inputfile = './input.txt'
# inputfile = './test_input.txt'

input = open inputfile

content = input.read

frequency = 0
frequency_tracker = []
found_frequency = false
the_found_frequency = 0

puts "Calculating your frequency..."
content.each_line do |line|
  frequency = frequency + line.to_i
  frequency_tracker.push(frequency)
end
puts "Initial frequency = " + frequency.to_s

puts "Calculating which was the first frequency to occur twice..."
while found_frequency != true do
  content.each_line do |line|
    frequency = frequency + line.to_i
    found_frequency = frequency_tracker.include?(frequency)
    if found_frequency
      the_found_frequency = frequency
      break
    end
end
end

puts the_found_frequency
