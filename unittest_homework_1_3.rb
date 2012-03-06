require "homework_1_3.rb"

input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] 
output = [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"],
          ["creams", "scream"]]

puts combine_anagrams(input).sort == output.sort
