require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
sea_world = Zoo.new("Sea World", "San Diego")

Zoo.find_by_location("Bronx")

shamu = sea_world.acquire_animal("Shamu", "whale", "1,000 lb")

serena = bronx_zoo.acquire_animal("Serena", "panther", "150 lb")
bill = bronx_zoo.acquire_animal("Bill", "lion", "150 lb")

sabrina = bronx_zoo.acquire_animal("Sabrina", "cheetah", "150 lb")
dario = bronx_zoo.acquire_animal("Dario", "panther", "150 lb")


bronx_zoo.animal_species

Zoo.find_by_location("Bronx")

shamu.zoo

bronx_zoo.animal_nicknames
Animal.find_by_species("panther")

puts "done"
