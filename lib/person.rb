class Person
  attr_reader :name 
  attr_accessor :bank_account, :happiness_index, :hygiene_index

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_index = 8
    @hygiene_index = 8
  end
  
  def happiness
    @happiness_index
  end

  def hygiene
    @hygiene_index
  end

  def happiness=(number)
    if number < 0
      @happiness_index = 0
    elsif number >= 0 && number <= 10
      @happiness_index = number 
    else
      @happiness_index = 10
    end
    @happiness_index
  end
  
  
  def hygiene=(number)
     if number < 0
      @hygiene_index = 0
    elsif number >= 0 && number <= 10
      @hygiene_index = number 
    else
      @hygiene_index = 10
    end
    @hygiene_index
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary 
    'all about the benjamins'
  end

  def take_bath
   self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -=2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end