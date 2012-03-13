require 'homework_2_1.rb'

puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
puts 1.dollar.in(:rupees)
puts 10.rupees.in(:euro)

puts "foo".palindrome? == false
puts "foof".palindrome?
res = { 'hello' => "world" }.palindrome?
puts res == true or res == false

puts [1,2,3,4,3,2].palindrome? == false
puts [1,2,3,4,3,2,1].palindrome?
