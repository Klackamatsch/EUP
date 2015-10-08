

require_relative 'movie'
require_relative 'playlist'




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