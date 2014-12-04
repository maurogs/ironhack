require 'spec_helper'

describe Vote do
  
	it "has a valid factory" do
		expect(build :vote).to be_valid
	end

	it "has a valid liked trait" do
		vote = build :vote, :liked		
		expect(vote).to be_liked
	end

	it "has a valid disliked trait" do
		vote = build :vote, :disliked
		expect(vote).to be_disliked
	end


	describe ".likes" do
		before :each do
			create_list :vote, 3, :liked
			create_list :vote, 2, :disliked
		end

		it "only returns likes" do	
			expect(Vote.likes).to all(be_liked)
		end
	end

	describe ".liked" do
		before :each do
			create_list :vote, 3, :liked
			create_list :vote, 2, :disliked
		end

		it "only returns likes" do	
			vote = build :vote, :disliked
			vote.liked
			expect(vote).to be_liked
		end
	end

	describe ".disliked" do
		before :each do
			create_list :vote, 3, :liked
			create_list :vote, 2, :disliked
		end

		it "only returns likes" do	
			vote = build :vote, :liked
			vote.disliked
			expect(vote).to be_disliked
		end
	end

end
