require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
g_s = Animal.new("dog", "60lbs", "ginger")
bat = Animal.new("bat", "20lbs", "dracula")
mastiff = Animal.new("dog", "100lbs", "teddy")
rat = Animal.new("bat", "20lbs", "chocula")
sat = Animal.new("bat", "20lbs", "crapula")


flatiron = Zoo.new("flatiron", "dumbo")
times_square = Zoo.new("hell on earth", "NYC")
bronx = Zoo.new("bronx", "NYC")

g_s.zoo = flatiron
mastiff.zoo = bronx
bat.zoo = flatiron
rat.zoo = flatiron
sat.zoo = flatiron

################################

g_s
Animal.all
Animal.find_by_species("bat")
Zoo.all
flatiron.animals
flatiron.animal_species
flatiron.find_by_species("dog")
Zoo.find_by_location("NYC")


#binding.pry
puts "done"
