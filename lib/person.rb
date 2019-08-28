# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name,:happiness, :hygiene

    def happiness=(num)
        @happiness = if_valid(num)
    end

    def hygiene=(num)
        @hygiene = if_valid(num)
    end


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        if @hygiene > 7
            return true
        end
        return false
    end

    def happy?
        if @happiness > 7
            return true
        end
        return false
    end

    def get_paid (salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        num = @hygiene + 4
        self.hygiene = num
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness +2
        self.hygiene = @hygiene -3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def if_valid(num)
        if num > 10 
            return 10
        elsif num < 0
            return 0
        end
        return num
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            return "blah blah sun blah rain"
        end
        return "blah blah blah blah blah"
    end


end