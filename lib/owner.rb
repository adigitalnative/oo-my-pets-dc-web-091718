require 'pry'
class Owner
  
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @name = name 
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self 
  end

  def self.all 
    @@all 
  end
  
  def self.reset_all 
    @@all = []
  end
#count how many owners have been created
  def self.count 
    @@all.count 
    # binding.pry
  end

  def say_species 
    "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name) 
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats 
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
#feed the fish which makes the fishes' mood happy
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    #@pets = hash ==> |key, value|
    @pets.each do |species, pets|
      #pets is array ==> |pet|
      pets.each do |pet|
        #for each pet, set the mood to "nervous"
        pet.mood = "nervous"
      end 
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end












end