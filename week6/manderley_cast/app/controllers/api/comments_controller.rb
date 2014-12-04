class Api::CommentsController < ApplicationController
	rescue_from 'ActiveRecord::RecordNotFound' do |exception|
		head :not_found
	end


	def index
		render json: Comment.all, each_serializer: Api::CommentsSerializer
	end

	def show
		comment = Comment.find(params[:id])
		render json: comment, serializer: Api::CommentsSerializer
	end
end
