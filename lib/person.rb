# your code goes here


class Person
  attr_reader :name
  attr_accessor :bank_account
  attr_accessor :happiness
  
  def initialize (name)
    @name=name
    @bank_account=25
    @happiness=8
  end  
  
  def self.happiness
    @happiness <= 10
  end
end

