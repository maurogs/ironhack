require 'spec_helper'

describe Movie do

	it "has a valid factory" do
		expect(build(:movie)).to be_valid
	end


	describe "#title" do


		it "is is not nil" do
			@movie = build :movie, title: nil

			expect(@movie).not_to be_valid
		end

		it "is not empty" do
			@movie.title = build :movie, ""

			expect(@movie).not_to be_valid
		end

		it "is valid with a non-empty title" do
			@movie = build :movie, title: "The Whore"
			expect(@movie).to be_valid
		end


		it "is not duplicated" do
			movie2 = create :movie, title: "The Wh", synopsis: "s"
			@movie = build :movie, title: "The Wh"

			expect(@movie).not_to be_valid
		end

	end

end
