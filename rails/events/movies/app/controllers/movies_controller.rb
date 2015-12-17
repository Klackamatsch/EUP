class MoviesController < ApplicationController
	def index
		@movies = Movie.all #.upcoming
		
	end

def show

		@movie = Movie.find(params[:id])
		
	end
	def edit
		@movie = Movie.find(params[:id])

		
	end
	def update
		@movie = Movie.find(params[:id])
		@movie.update(movie_params)
		redirect_to movie_path(@movie.id)
		flash[:notice] = "updated!"
	end
	def new
		@movie = Movie.new

	end
	def create

		
		@movie = Movie.new(movie_params)
		@movie.save
		redirect_to movie_path(@movie.id)
		flash[:notice] = "created!"
		
	end
	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_url	
		flash[:notice] = "deleted!"	
	end
	
	private
	def movie_params
		permitted_params = params.require(:movie).permit(:title, :description, :rating, :total_gross, :kinostart)
	end


end