require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
# my_zoo = Zoo.new("Bronx Zoo", "Bronx")
my_zoo = Zoo.new("Bronx Zoo", "The Bronx")
my_zoo_2 = Zoo.new("Brooklyn Zoo", "Brooklyn")
my_zoo_3 = Zoo.new("My Third Zoo", "Somewhere")



zebra = Animal.new("Equidae", 300, "baby z", my_zoo)
horse = Animal.new("Mammal", 600, "mr horse", my_zoo_2)
whale = Animal.new("Mammal", 45, "Moby", my_zoo_2)
giraffe = Animal.new("Horse", 17, "Long Neck Horse", my_zoo)

# giraffe.zoo_home = my_zoo_2


binding.pry
puts "done"
