require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "BX")
zoo2 = Zoo.new("Dartmoor Zoo", "UK")
zoo3 = Zoo.new("Prospect Park Zoo", "Brooklyn")


animal1 = Animal.new("Cat", 400, "Tigger", zoo1)
animal2 = Animal.new("Dog", 450, "Mufasa", zoo2)
animal3 = Animal.new("Rat", 100, "Ratty", zoo3)
#animal3 = Animal.new("Dog", 160, "Ghost", zoo3)
binding.pry








puts "done"
