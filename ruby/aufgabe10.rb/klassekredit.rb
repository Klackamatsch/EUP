# 2. Klasse Kredit 
# a. Legen Sie eine Klasse Kredit an, mit der Eigenschaft kunde (ohne Setter und Getter) 
# und einem Konstruktor, der die Eigenschaft kunde füllt. Die Eigenschaft Kunde wird mit 
# einem Kunden-Objekt initialisiert. Erzeugen Sie ein Objekt kredit1, dem Sie das bereits 
# existierende Objekt kunde1 übergeben.


# b. Legen Sie eine Eigenschaft jahresgehalt an, die sowohl les- als auch schreibbar sein 
# soll. Füllen Sie für das Objekt kredit1 die Eigenschaft mit einem Wert von 24000. 
# c. Legen Sie eine Getter-Methode für die Eigenschaft kunde an, die folgende Ausgabe 
# erzeugt: 'Theo Sonnenschein, Hermelinweg 11, 22159 Hamburg. Jahresgehalt: 24000 Euro.' 


# d. Fügen Sie eine Eigenschaft kreditsumme hinzu, auf die lesend und schreibend zugegriffen 
# werden kann. 

# Speichern Sie für das bestehende Objekt in der Eigenschaft kredit den Wert 5000.

# e. Fügen Sie eine Methode kreditvergabe hinzu. Diese Methode prüft, ob der Kredit vergeben werden 
# kann. Die Vergabe ist abhängig davon, ob das Jahresgehalt mehr als 6 mal so groß ist, wie die 
# kreditsumme. Falls der Kredit gewährt wird, erfolgt die Ausgabe: Der Kredit in Hoehe von 5000 €
#  kann gewaehrt werden. Anderfalls: Sorry: kein Kredit. Besseren Job suchen.


# f. Ergänzen Sie die Klasse mit einer Methode abzahlung, der ein Parameter 'monate' mitgegeben wird.
#  Die Methode dividiert den Kreditbetrag durch die 'Monate' und gibt aus, wie groß der abzuzahlende 
#  Betrag pro Monat ist. Die AUsgabe lautet: Bei einer Rückzahlung des Kredits von 5000 € innerhalb 
#  von 10 Monaten ist pro Monat eine Zahlung von 500 € notwendig.

class Kredit
			attr_accessor :jahresgehalt
			attr_accessor :kreditsumme
	def initialize(huhu)
		@kunde = huhu

	end
		def abzahlung(monate)
			rate = (@kreditsumme / monate)
			puts "bei der Rückzahlung des Kredits in der Höhe von #{@kreditsumme} EURO innerhalb von #{monate} ist eine Rate von #{rate} notwendig"
		end


	def kreditvergabe
		if @kreditsumme * 6 < @jahresgehalt
			puts "Der Kredit in höhe von #{@kreditsumme} euro wird gewährt"
		else
			puts "such dir nen besseren job BRO"
		end
		
	end




	def gehalt

		"#{@kunde} \n Jahresgehalt: #{@jahresgehalt} \n Kredit: #{@kreditsumme} "
			
		end








end