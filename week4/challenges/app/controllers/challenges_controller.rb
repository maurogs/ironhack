class ChallengesController < ApplicationController
	
	def home
		@challenges = Challenge.order(created_at: :asc)
	end

	def show
		#name = params[:name].titleize
		@challenge = Challenge.find params[:id]
			rescue ActiveRecord::RecordNotFound
		render 'no_challenges_found'
	end

	def new
		@challenge = Challenge.new
	end

	def create
		@challenge = Challenge.new challenge_params

		if @challenge.save
			redirect_to challenge_path(@challenge)
		else
			flash.now[:error] = "Try Again"
			render 'new'
		end

	end

	private

	def challenge_params
		params.require(:challenge).permit(:name, :content)
	end

end
