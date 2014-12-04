class Api::MoviesController < Api::ApplicationController

	def index
		#@movies = Movie.all
		render json: Movie.all, each_serializer: Api::MoviesSerializer

	end

	def show
		movie = Movie.find(params[:id])
		render json: movie, serializer: Api::MoviesSerializer
	end

end
