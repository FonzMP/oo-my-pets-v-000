class Owner
  # code goes here

  attr_accessor :name, :pets, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish_purchase = Fish.new(name)
    self.pets[:fishes] << fish_purchase
  end

  def buy_cat(name)
    cat_purchase = Cat.new(name)
    self.pets[:cats] << cat_purchase
  end

  def buy_dog(name)
    dog_purchase = Dog.new(name)
    self.pets[:dogs] << dog_purchase
  end

  def walk_dogs
    puts self.pets[:dogs]
  end

end
