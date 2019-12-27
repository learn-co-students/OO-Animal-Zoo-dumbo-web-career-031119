require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


zoo1 = Zoo.new("Bronx", "Bronx Zoo")
zoo2 = Zoo.new("Queens", "Queens Zoo")
zoo3 = Zoo.new("Brooklyn", "Brooklyn Zoo")
zoo4 = Zoo.new("Manhattan", "Manhattan Zoo")

zoo1.add_animal("Rat", 5, "Ratty")
zoo1.add_animal("Cat", 5, "Catty")
zoo1.add_animal("Cat", 5, "Not Batty")
zoo1.add_animal("Dog", 5, "Doggie")
zoo1.add_animal("Dog", 5, "Doge")

binding.pry
puts "done"
