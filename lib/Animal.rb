class Animal

attr_accessor :weight, :zoo_home
attr_reader :species, :nickname

@@all = []

def initialize(species, weight, nickname, zoo_home)
  @species = species
  @weight = weight
  @nickname = nickname
  @zoo_home = zoo_home
  @@all << self
end

def self.all
  @@all
end

def self.find_by_species(speciesArg)
  self.all.select {|animal| animal.species == speciesArg}
end

end



########## Animal is dependent upon the zoo and needs
# the zoo instance needs to be passed into the argument


# Easier for animal to keep track on its single zoo than
# for zoo to keep track of multiple animals

# Attr reader (macro) allows us to replace instance
# variables
