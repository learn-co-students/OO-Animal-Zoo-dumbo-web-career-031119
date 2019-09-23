require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
g_s = Animal.new('dog', '80lbs', 'ginger')
mastiff = Animal.new('dog', '100lbs', 'teddy')
vampire_bat = Animal.new('bat', '20lbs', 'dracula')

flatiron = Zoo.new('flatiron', 'brooklyn')
bronx_zoo = Zoo.new('bronx', 'the bronx')

g_s.zoo = flatiron
mastiff.zoo = flatiron
vampire_bat.zoo = bronx_zoo


binding.pry
puts "done"
