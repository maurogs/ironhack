class SupportsController < ApplicationController
	def index
	end

	def show
		@challenges = Challenge.find params[:id]
		@support = @challenges.support

	end
end
