require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Test your code here
# tom = Animal.new("cat",12,"Tom","Bronx zoo")

bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
bronx_zoo2 = Zoo.new("notBronxzoo", "Bronx")
bronx_zoo.new_animal("cat",12,"tom")
bronx_zoo.new_animal("dog",12,"fido")
bronx_zoo.new_animal("dog",12,"cary")
bronx_zoo.new_animal("dog",12,"jerry")

central_park = Zoo.new("Central Park", "Manhattan")
central_park.new_animal("pidgion",12,"billy")
central_park.new_animal("rat",12,"stewart")
central_park.new_animal("elephant",12,"bambi")
central_park.new_animal("kanggaroo",12,"jack")



binding.pry
puts "done"