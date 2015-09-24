a. erstellen Sie eine Klasse mit der Bezeichnung Player
b. erstellen Sie ein Objekt player1 der Klasse 
c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus
 diesen Werten die Instanzvariablen @name und @health initialisiert
d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
e. setzen Sie fuer health einen Standardwert 100
f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass
 puts player1.say_hello die Ausgabe ergibt
h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 
hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden
 soll, also puts players erfolgt.


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


	#player1 = Player.new
	player1 = Player.new('Theo',5)
	puts player1


	player2 = Player.new('Peter')
	puts player2
	puts player1
	puts player2


	player1.blam
	player2.w00t
