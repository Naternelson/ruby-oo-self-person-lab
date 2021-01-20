# your code goes here
class Person

    attr_reader :name, :happiness , :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def not_exceed(index,bottom,top)
        var = index if index.between?(bottom,top)
        var = top if index > top
        var = bottom if index < bottom
        var
    end

    def happiness=(index) 
        @happiness = not_exceed(index,0,10)
    end

    def hygiene=(index) 
        @hygiene = not_exceed(index,0,10)
    end
    
    def happy?
        return true if @happiness > 7
        false
    end

    def clean?
        return true if @hygiene > 7
        false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        check = @hygiene + 4
        #@hygiene = not_exceed(check,0,10)
        self.hygiene = check
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        #hygiene = @hygiene - 3
        #happy = @happiness + 2
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness = @happiness + 3
        person.happiness = person.happiness + 3
        "Hi #{person.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        convo = "blah blah blah blah blah"
        happiness = 0

        case topic.downcase
        when 'politics'
            convo = "blah blah partisan blah lobbyist"
            happiness = -2
        when 'weather'
            convo = "blah blah sun blah rain"
            happiness = 1
        end

        # if topic.downcase == 'politics'
        #     convo = "blah blah partisan blah lobbyist"
        #     happiness = -2
        # end
        # if topic.downcase == 'weather'
        #     convo = "blah blah sun blah rain"
        #     happiness = 1
        # end

        
        self.happiness = @happiness + happiness
        person.happiness = person.happiness + happiness
        convo
    end
end 

# joe = Person.new("Joe")
# joe.happiness = 10
# puts joe.happiness