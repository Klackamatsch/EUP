
require_relative 'movie'
require_relative 'playlist'




movie1 = Movie.new('Ninja Turtles',4)
movie2 = Movie.new('american Horror Story',1)
movie3 = Movie.new('8mm',3)
movie4 = Movie.new('Kifferjoe',5)
pl = Playlist.new("sarah")
pl.add_movie(movie1)
puts pl
movies = [movie1, movie2, movie3, movie4]
pl.add_movie(movie2)
pl.play