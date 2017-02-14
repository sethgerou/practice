
module Nextbehavior
  def eval(behavior)
    if behavior == "eat"
      eat
    elsif behavior == "move"
      move
    elsif behavior == "play"
      play
    else behavior == "vocalize"
      vocalize
    end
  end
end

class Cat
  attr_accessor :color, :weight

  @species = "Felis Catus"
  @diet = "Carnivore"

  def initialize(name)
    @color = ""
    @weight = ""
    @name = name
    @weird_drinking_method = ""
    @wakefullness = "awake"
    @wake_states = ["awake", "sleepy", "asleep"]
    @mood = "calm"
    @moods = ["calm", "playful", "agitated", "mixed"]
    @location = "indoors"
    @locale_states = ["indoors", "outdoors"]
    @vocalization = "quiet"
    @vocal_states = ["quiet", "loud"]
    @hunger_state = "hungry"
    @behaviour_next = ["move", "play", "vocalize", "eat"]
    @counter = 0
  end

  include Nextbehavior

  def eat
    puts "\n#{@name.capitalize} the cat eats."
    sleep(rand(0.3..3.0))
    @hunger_state = "not hungry"
    @wakefullness = @wake_states[rand(3)]
    @counter += 1
    eval(@behaviour_next[rand(4)])

  end

  def move
    puts "\n#{@name.capitalize} the cat moves."
    sleep(rand(0.3..3.0))
    @location = @locale_states[rand(2)]
    eval(@behaviour_next[rand(4)])
  end

  def play
    puts "\n#{@name.capitalize} the cat plays."
    sleep(rand(0.3..3.0))
    @mood = @moods[rand(4)]
    @hunger_state = "hungry"
    eval(@behaviour_next[rand(4)])
  end

  def vocalize
    puts "\n#{@name.capitalize} the cat meows.\a"
    sleep(rand(0.3..3.0))
    @vocalization = @vocal_states[rand(2)]
    if @counter >= 10
      describe_cat
    else
      eval(@behaviour_next[rand(4)])
    end
  end

  def describe_cat
    puts "Cat Name: #{@name}"
    sleep(0.3)
    puts "Color: #{@color}  Weight: #{@weight}  Current Mood: #{@mood}"
    sleep(0.3)
    puts "Wakefullness: #{@wakefullness}  Location:  #{@location}"
    sleep(0.3)
    puts "Hunger State: #{@hunger_state}  Vocalization: #{@vocalization}"
  end

end

#driver code
cat = Cat.new("fluffy")
cat.color = "orange"
cat.weight = "12 lbs"
cat.eat
