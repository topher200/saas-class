require 'homework_1_1.rb'

puts palindrome?("kayak")
puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?("Abracadabra") == false

puts count_words("A man, a plan, a canal -- Panama") ==
  {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
puts count_words("Doo bee doo bee doo") ==
  {'doo' => 3, 'bee' => 2}
