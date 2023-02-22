# your code goes here
class Person
   attr_reader :name
   attr_accessor :bank_account, :happiness, :hygiene
   
   def initialize(name)
      @name = name
      @bank_account = 25
      @hygiene = 8
      @happiness = 8
   end

   def bank_account
      @bank_account 
   end

   def happiness= num
      @happiness = if num < 0
         0
      elsif num > 10
         10
      else 
         num
      end
   end

   def hygiene= value
      @hygiene = if value < 0
         0
      elsif value > 10
         10
      else 
         value
      end
   end

   def happy?
      self.happiness > 7
   end

   def clean?
      self.hygiene > 7
   end

   def get_paid(value)
      self.bank_account += value
      "all about the benjamins"
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
      if topic == "politics"
         self.happiness -= 2
         person.happiness -= 2
         "blah blah partisan blah lobbyist"
      elsif topic == "weather"
         self.happiness += 1
         person.happiness += 1
         'blah blah sun blah rain'
      else
         'blah blah blah blah blah'
      end
   end
end