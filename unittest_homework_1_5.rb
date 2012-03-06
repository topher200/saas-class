require 'homework_1_5.rb'

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts (f.bar_history == [nil,1,2])
