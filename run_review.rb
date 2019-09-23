require_relative "lib/animal_review.rb"
require_relative "lib/Zoo_review.rb"
require 'pry'


#Test your code here


flatiron = Zoo.new('flatiron', 'brooklyn')
bronx_zoo = Zoo.new('bronx', 'the bronx')
prospect_zoo = Zoo.new('prospect park', 'the bronx')

g_s = Animal.new('dog', '80lbs', 'ginger', flatiron)
mastiff = Animal.new('dog', '100lbs', 'teddy', flatiron)
vampire_bat = Animal.new('bat', '20lbs', 'dracula', prospect_zoo)


binding.pry
puts "done"
