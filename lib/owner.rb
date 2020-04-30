class Owner
  attr_accessor :pets, :dog, :cat
  attr_reader :species, :name
  
  @@all=[]
  @@count = 0

def initialize(name, species = "human")
  @name = name
  @species = species
  @@all << self
  @@count += 1
  @pets= {:dogs => [], :cats => []}
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

def self.cats
  @cats
end

def self.dogs
  
end

def buy_cat
  @pets << @pets[:cats]= Cat.new(cat_name)
  
end


end