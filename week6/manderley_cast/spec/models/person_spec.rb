require 'spec_helper'

describe Person do

		it "has a valid factory" do
	
			expect(build(:person)).to be_valid

		end


		describe "#first_name" do

			it "is is not nil" do
				@person = build :person, first_name: nil
				expect(@person).not_to be_valid
			end

			it "is not empty" do
				@person = build :person, first_name: " "
				expect(@person).not_to be_valid
			end
	
		end


		describe "#last_name" do

			it "is is not nil" do
				@person = build :person, last_name: nil
				expect(@person).not_to be_valid
			end

			it "is not empty" do
				@person = build :person, last_name: " "
				expect(@person).not_to be_valid
			end
	
		end

	
end
