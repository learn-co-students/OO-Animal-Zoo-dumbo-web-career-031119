class Animal

    attr_reader :nickname, :species, :zoo
    attr_accessor :weight
   
    @@all =[]
    def initialize(species,weight,nickname,zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all_unique_animals 
        @@all
    end 

    def self.find_by_species(species)
      @@all.select{|animal| animal.species == species}
    end
   end