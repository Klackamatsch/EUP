lala = "Die woche besteht aus :\n\tMontag \n\tDienstag \n\tMittwoch \n\tDonnerstag \n\tFreitag \n\tSamstag \n\tSonntag"
str = "es ist freitag"
puts str
puts lala
zahl = 15 
puts zahl
#puts konvertiert eine zahl in einen string, besser ist aber eine explizite konvertierung via .to_S
puts zahl.to_s

#Zusammen gesetzte Strings:
puts str + zahl.to_s

puts "#{str} der #{zahl}. im Monat"


		day ="Freitag"
				puts "es ist tatsächlich heute #{day}, der #{Time.new}."


				3.times do 
					puts str
				end