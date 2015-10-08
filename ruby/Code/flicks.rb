class Playlist

	def initialize(name)
		@name = name
		@movies = []
	end
	def add_movie(movie)
				@movies << movie
				
	end
	def to_s
			 @movies.size.to_s
	
	end

	def play
			puts "#{@name}'s Playlist"
			@movies.each do |movie|
				case roll_die
					when 1..2
						movie.thumbs_down
						puts "#{movie.title }wurde gedowned"
					when 3..4
						puts "#{movie.title }wurde nix gemacht"
					else
						movie.thumbs_up
						puts "#{movie.title }wurde geupt"
				end
				puts movie
			end
	end
	def roll_die
		rand(1..6)
		
	end
	

end


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
def hit?
			if @rank >= 10
				true
			else
				false
			end
			
		end

	def thumbs_up
		@rank += 1
		#@rank = @rank +1
		end

	def thumbs_down
			@rank -= 1
			#@rank = @rank - 1

		end


	def to_s
			"#{@title} hat ein Ranking von: #{@rank}."

	
		end
	def status
		if hit? 
			"hit"
		else
			"flop"
		end
		
	end

	# def status
	# 	if hit? ? "hit" : "flop"			
	# 	end
	# end



end







movie1 = Movie.new('Ninja Turtles',4)
puts movie1.status
movie2 = Movie.new('american Horror Story',11)
puts movie2.status
movie3 = Movie.new('8mm',3)
puts movie3.status
movie4 = Movie.new('Kifferjoe',10)
puts movie4.status
pl = Playlist.new("sarah")
pl.add_movie(movie1)
puts pl
movies = [movie1, movie2, movie3, movie4]
pl.add_movie(movie2)
pl.play

# movies.each do |movie|
# 	movie.thumbs_up
# 	#movie.thumbs_down
# 	puts movie
# 	end

# movie1.title= "ninja purples"   # der attr_accessor sorgt dafür, dass diese zeile verändern kann
# puts movie1







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


