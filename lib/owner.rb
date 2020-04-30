class Owner
  attr_accessor :pets
  attr_reader :species, :name
  
  @@all=[]
  @@count = 0

def initialize(name, species = "human")
  @name = name
  @species = species
  @@all << self
  @@count += 1
end

def say_species
  "I am a human."
end

def self.all
  @@all
end

def self.count
  @@count
end

def self.reset_all
  @@all.clear
  @@count = 0
end

end