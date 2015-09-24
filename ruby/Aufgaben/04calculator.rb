# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen 
# entgegennimmt und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition
#  und eine Substraktion durch und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.


class Calculator
attr_accessor :zahl1
attr_accessor :zahl2
			def initialize(zahl1,zahl2)
					@zahl1 = zahl1
					@zahl2 = zahl2 
			end


			def add
				#@erg = @zahl1 + @zahl2
				#puts "das Ergebnis lautet#{@erg}"
			puts	"die Summe aus #{@zahl1} und  #{@zahl2} ergibt #{@zahl1 + @zahl2}" 
					
				end

			def substract		
					puts "die differenz aus #{@zahl1} und  #{@zahl2} ergibt #{@zahl1 - @zahl2}"
				end
def to_s
			"die Summe aus #{@zahl1} und  #{@zahl2} ergibt " 

	
		end









	end
aufgabe = Calculator.new(5,4)

aufgabe.add
aufgabe.substract
aufgabe.zahl1 = 10
aufgabe.add