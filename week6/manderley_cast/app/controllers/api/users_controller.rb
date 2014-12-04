class Api::UsersController < Api::ApplicationController

	def index
		render json: User.all, each_serializer: Api::UsersSerializer
	end

	def show
		user = User.find(params[:id])
		render json: user, serializer: Api::UsersSerializer

	end

end
