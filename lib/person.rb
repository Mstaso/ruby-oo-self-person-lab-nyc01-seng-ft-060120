# your code goes here


class Person
  attr_reader :name
  attr_accessor :bank_account
  attr_accessor :happiness
  attr_accessor :hygiene
  
  def initialize (name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
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
    salary = rand(10)
    salary << self.bank_account
  end
end

