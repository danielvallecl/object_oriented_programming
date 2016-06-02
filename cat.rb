#Cats Meow#

class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  #Conversion of AM/PM#

  def eats_at
    if @meal_time < 12
      return "#{@meal_time - 12} AM"
    elsif @meal_time > 12
      return "#{@meal_time - 12} PM"
    else @meal_time == 12
      return "#{@meal_time}"
    end
  end

  #Outputs a string with the values"

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end
end

tabby = Cat.new("Mira", "Fish", 20)
grey_cat = Cat.new("Luna", "Chicken", 21)

tabby.meow
grey_cat.meow
