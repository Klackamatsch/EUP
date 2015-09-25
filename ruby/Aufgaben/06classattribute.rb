# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score


class Player
 attr_accessor :name
 attr_accessor :health
		def initialize(pname, phealth = 100)
			@name = pname
			@health = phealth
		end




		def to_s
 				"Ich bin #{@name} mit einem Wert von #{@health}"
 				@health + @name.length

 			end

 		def blam
 				@health -= 10
 				puts "#{@name} wurde um 10 geblamt!!! Aktueller stand:#{@health}"
 			end
		def w00t
				@health += 10
				puts "#{@name} wurde um 10 gew00ted aktueller Stand: #{@health}"
			end
		def score
			@health + @name.length
			
		end


end


	#player1 = Player.new
	player1 = Player.new('Theo',20)
	puts player1


	player2 = Player.new('Peter')
	puts player2
	puts player1
	puts player2


	player1.blam
	player2.w00t
	puts player1.health
	puts player1.name
	player1.name ="willibald"
	puts player1.name
	puts player1.score