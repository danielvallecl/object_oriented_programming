#Paperboy Exercise#

class Paperboy
  attr_reader :name
  def initialize(name, quota, experience, side, earnings)
  @name = name
  @quota =  quota
  @experience = experience
  @side = side
  @earnings = earnings
end

def quota
  return 50 + (@experience / 2)
end

def deliver(start_address, end_address)

end

def report
  puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
end

end
