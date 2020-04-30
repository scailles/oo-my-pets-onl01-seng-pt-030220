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

def cats
  Cat.all.select{|cat| cat.owner == self}
end

def dogs
  Dog.all.select{|dog| dog.owner == self}
end

def buy_cat(name, owner = self)
    Cat.new(name, owner)
  end
  
  def buy_dog(name, owner = self)
    Dog.new(name, owner)
  end
  
  def walk_dogs
    Dog.all.select{|dog| dog.owner == self}


end