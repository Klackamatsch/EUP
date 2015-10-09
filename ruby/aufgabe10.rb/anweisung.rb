require_relative 'klassekunde'
require_relative 'klassekredit'

kunde1= Kunde.new('theo sommer')
puts "STEP 1 **********************************************************\n"
puts kunde1.huhu

kunde1.adresse = ('Hermelinweg11, 24567 Hamburg')
puts "STEP 2 **********************************************************\n"
puts kunde1.huhu

kunde1.name = ('Theo Sonnenschein')
puts "STEP 3 **********************************************************\n"
puts kunde1.huhu

kunde1.gehalt = 2000
puts "STEP 4 **********************************************************\n"
puts kunde1.huhu




kredit1 = Kredit.new(kunde1.huhu)


puts "STEP 5 **********************************************************\n"
puts kredit1
kredit1.jahresgehalt = 24000

puts "STEP 6 **********************************************************\n"

puts kredit1.gehalt

puts "STEP 7 **********************************************************\n"

kredit1.kreditsumme = 5000

puts kredit1.gehalt

puts "STEP 8 **********************************************************\n"


kredit1.kreditvergabe



