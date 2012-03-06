require 'homework_1_5.rb'

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts (f.bar_history == [nil,1,2])

class MultipleFoo
  attr_accessor_with_history :bar
  attr_accessor_with_history :baz
end

f = MultipleFoo.new
f.bar = 1
f.bar = 2
f.baz = 5
f.baz = 6
puts (f.bar_history == [nil,1,2])
puts (f.baz_history == [nil,5,6])
