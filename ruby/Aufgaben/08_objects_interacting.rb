# a. erstellen Sie eine Klasse Game mit einem Konstruktor, der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:
# 	There are 3 players in Knuckleheads: 
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.




class Game
	attr_accessor :title
	attr_accessor :players
		def initialize(title)
			@title = title
		
		end

		def add_player(player)
				@players << player
			
		end

		def to_s
			"#{@title}"
			
		end

		


	end
pl = Game.new("zack mc cracken")


puts pl




class Player
attr_accessor :name, :health, :score
		def initialize(name, health = 100, score=0)
			@name = name
			@health = health
			@score = score
		end




		 def to_s
 				"Ich bin #{@name} mit einer Gesundheit von #{@health} und einem Score von #{@score}"
 			end

 			def blam
 				@health -= 10
 				puts "#{@name} wurde um 10 geblamt!!! Aktueller stand:#{@health}"
 			end
						def w00t
								@health += 10
								puts "#{@name} wurde um 10 gew00ted aktueller Stand: #{@health}"
						end

						def play
			puts "there are #{@players.count} players in #{@title} (#{@players})"
			puts "Iḿ #{@players} "
		end

end



player1 = Player.new('Moe',5)
player2 = Player.new('Larry',200,1)
player3= Player.new('Curly',100,2)
players = [player1,player2,player3]

players.each do |var|
	puts var
end