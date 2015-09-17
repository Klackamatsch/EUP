# Einrichten einer Kundenklasse.

# Eine Klasse customer soll eingerichtet werden.
# Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
# Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.

# Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)

# Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
# Konto:................9999
# Name:.................Theo Lodgz
# Strasse:..............Hermelinweg 7
# Ort:..................22159 Hamburg

# Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.

class Customer

					def initialize(kontonummer,nachname,strasse,ort)
								
									@bank_account = kontonummer
									@lastname = nachname
									@street = strasse
									@where = ort
					end
						def print_adress
							puts "Konto........................#{@bank_account}\n"
							puts "Name.........................#{@lastname}\n"
							puts "Straße.......................#{@street}\n"
							puts "Ort..........................#{@where}\n"
						end

end

 kunde1 = Customer.new(123456789,"Kaehlig", "Schusterkamp", "Schmalfeld")
 puts kunde1.print_adress
kunde2 = Customer.new(987654321,"bremer","Rumpffsweg", "Hamburg")
puts kunde2.print_adress
