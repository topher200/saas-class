require 'homework_1_4.rb'

# healthy?
puts (not Dessert.new('cake', 300).healthy?)
puts Dessert.new('donut', 100).healthy?

# getter setter
pie = Dessert.new('pie', 500)
puts pie.calories == 500
pie.calories= 100
puts pie.calories == 100
puts pie.healthy?

# delicious?
puts JellyBean.new("candy", 200, "sveedish fish").delicious?
puts (not JellyBean.new("black licorice", 200, "black licorice").delicious?)

