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
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    pets = self.cats + self.dogs
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  def list_pets
    all_pets = self.cats + self.dogs
    return all_pets
  end
    


end