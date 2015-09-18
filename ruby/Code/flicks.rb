class Movie
				#def title=(ptitle)
				#@title = ptitle
				#end
					attr_writer :title # attr_writer ersetzt die oberen 3 zeilen
				# def title
				# 	@title
				# end
				attr_reader :title   # attr_reader macht das selbe wie die methode über dem hier
				attr_accessor :title
	def initialize(ptitle,prank=0)
			puts"neues Objekt"
			@title = ptitle.capitalize
			@rank = prank
		end

	def thumbs_up
		@rank += 1
		#@rank = @rank +1
		end

	def Thumbs_down
			@rank -= 1
			#@rank = @rank - 1

		end


	def to_s
			"#{@title} hat ein Ranking von: #{@rank}."
	
		end
	



end

movie1 = Movie.new('Ninja Turtles',4)
movie2 = Movie.new('american Horror Story',1)
movie3 = Movie.new('8mm',3)
movie4 = Movie.new('Kifferjoe',5)

movies = [movie1, movie2, movie3, movie4]

movies.each do |movie|
	movie.thumbs_up
	#movie.thumbs_down
	puts movie
	end

movie1.title= "ninja purples"   # der attr_accessor sorgt dafür, dass diese zeile verändern kann
puts movie1







# def movie_listing(title,rank=10)

# "Movie: #{title.downcase.capitalize} hat #{weekday} das Ranking #{rank}"

# end
# def weekday
#  Time.now.strftime("%A")
# end

# puts movie_listing("Ninja Turtles",1)
# puts movie_listing("SWAT",5)
# puts movie_listing("American Horror Story",3)








#Beispiel für Variablen innerhalb von methoden
#def movie_listing
# 		var1 = "Movie: American Horror Story"
# 		var2 =  "Movie: Bee Movie"
#puts	"#{var1}\n#{ var2}"
# 		"Movie: checkie chan"
# 		"Movie: rambo"
# end 

# puts movie_listing

# var = movie_listing
# puts "Rückgabewert #{var}"
# puts "var außerhalb:#{var.object_id}"


# def music_listening

# 			"trck1: magic carpet ride"
# 			"trck2: hotel california"
# 	end

# 	puts music_listening

# def lalala

# puts"erste zeile"
# puts "zweite zeile"

# end
#  lalala


