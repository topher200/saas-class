class C
  def to_s
    'i am C'
  end
end

class B < C
end

class A < B
end

c = C.new
puts c

a = A.new
puts A.superclass
puts a.class

puts /([ACGU]|[ACGT])+/.match('ACGUACGT')





