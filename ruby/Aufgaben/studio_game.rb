#a. Legen Sie eine neue Datei studio_game.rb an
#b. speichern Sie in der Variable name1 den Wert 'larry'
#c. speichern Sie in der Variable health den Wert 60
#d. geben Sie auf der Konsole: 'larry's health is 60' , unter Verwendung der Variablen aus (2 Versionen)
#e. verdreifachen Sie den Wert von larrys health
#f. reduzieren Sie die health durch eine Division durch 9. Geben Sie eine Variante mit float und eine mit integer aus
#g. erzeugen Sie folgende Ausgabe:
#	Players:
#		larry
#		curly
#		moe
#h. speichern sie die Namen der Spieler in Variablen und geben Sie diese erneut wie abgebildet aus

class Player

		def initialize(pname, phealth = 100)
			@name = pname
			@health = phealth
		end




		 def to_s
 				"Ich bin #{@name} mit einem Wert von #{@health}"
 			end

 			def blam
 				@health -= 10
 				puts "#{@name} wurde um 10 geblamt!!! Aktueller stand:#{@health}"
 			end
						def w00t
								@health += 10
								puts "#{@name} wurde um 10 gew00ted aktueller Stand: #{@health}"
						end

end



player1 = Player.new('theo',5)
player2 = Player.new('Peter')
players = [player1,player2]

players.each do |var|
	puts var
end

players.size.times do |i|
	puts i.to_s
	puts players [i]
end

