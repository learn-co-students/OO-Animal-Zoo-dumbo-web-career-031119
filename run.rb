require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo_1 = Zoo.new("bronx zoo", "bronx")
zoo_2 = Zoo.new("bk zoo", "bronx")
zoo_3 = Zoo.new("queens zoo", "bronx")
animal_1 = Animal.new("dog", "60", "c", zoo_1)
animal_2 = Animal.new("dog", "50", "d", zoo_2)
animal_3 = Animal.new("cat", "30", "m", zoo_1)


binding.pry
puts "done"
