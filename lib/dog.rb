class Dog
  # code goes here

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(new_mood)
    self.mood = new_mood
  end


end
