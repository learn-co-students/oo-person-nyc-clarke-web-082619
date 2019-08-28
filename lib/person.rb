# your code goes here

class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness=(happiness)
        if (happiness > 10) then 
            @happiness = 10
        elsif  (happiness < 0)
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if (hygiene > 10) then 
            @hygiene = 10
        elsif  (hygiene < 0)
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
        happiness > 7 
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary = 0)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics' then
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            'blah blah sun blah rain'   
        else
            'blah blah blah blah blah'     
        end
    end
end