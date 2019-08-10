require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

bronx_zoo = Zoo.new("Bronx Zoo", "BX")
dartmoor_zoo = Zoo.new("Dartmoor Zoo", "UK")

animal1 = Animal.new("Cat", 400, "Tigger", dartmoor_zoo)
animal2 = Animal.new("Cat", 450, "Mufasa", dartmoor_zoo)
animal3 = Animal.new("Dog", 160, "Ghost", bronx_zoo)


binding.pry
puts "done"
