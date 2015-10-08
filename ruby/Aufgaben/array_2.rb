# 2. Worte
# a. Bilde ein Array mit den Worten: Pflaume, Bauschaum, Auster
# b. Alle Element, die den String aus enthalten sollen ausgegeben werden.
# c. erzeugen eine Ausgabe nach der Länge der Worte von klein nach groß
# d. Ein Hash wird ausgegeben, das Wort als Index, die Anzahl der Buchstaben als Wert

########2.a 2.b################################################################
liste = %w(Pflaume Bauschaum Auster)
var = liste.select do |a|
	a.include?("aus") || a.include?("Aus")   # || bedeutet oder 
	end

	#puts var
	liste.each do |b|
			if b.downcase["aus"] == 'aus'
				puts b
			end
	end
########2.c######################################################################

sortiert = liste.sort_by do |a|
	a.length
end

puts sortiert

#########2.d#############################################################################

myHash = Hash.new
liste.each do |l|
myHash[l] = l.length
	end

	puts myHash