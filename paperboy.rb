#Paperboy Exercise#

class Paperboy
  attr_reader :name, :quota, :experience
  def initialize(name, side)
  @name = name
  @quota =  50
  @experience = 0
  @earnings = 0
  @side = side
end

def quota

end

def deliver(start_address, end_address)
  even_side = 0
  odd_side = 0
  house_total = ((end_address - start_address) / 2.floor)

  @experience = house_total

  if house_total <= @quota
    @earnings = @experience * (0.25)
    @earnings -= 2 house_total < quota
  elsif house_total > @quota
    @earnings = (@experience * 0.25) + ((@experience - @quota) * 0.25)
  end_address
end

def report
  puts "I'm #{@name}, I've delivered #{@experience + @quota} papers
  and I've earned #{@earnings} so far!"
end

end

johnny = Paperboy.new("Johnny", "even")
johnny.report
johnny.deliver(205,500)
johnny.report
