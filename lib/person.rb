# your code goes here
require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account
  attr_accessor :happiness
  attr_accessor :hygiene
  @@all = []
  
  def initialize (name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
    @@all << self
  end  
  
  def happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
    @happiness
  end
  
  def hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
    @hygiene
  end
  
  def happy?
    if @happiness > 7
      TRUE
    else
      false
    end
  end  
  
  def clean?
    if @hygiene > 7
      TRUE
    else
      false
    end
  end
  
  def get_paid(salary)
    salary = 100
    @bank_account = salary + @bank_account
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    return "♪ another one bites the dust ♫"
  end  
  
  def call_friend (friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end  


def start_conversation (friend, topic)
  if topic == "politics"
    self.happiness = @happiness - 2
    friend.happiness = friend.happiness - 2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness = @happiness + 1
    friend.happiness = friend.happiness + 1
    "blah blah sun blah rain"
  end
end  

end

