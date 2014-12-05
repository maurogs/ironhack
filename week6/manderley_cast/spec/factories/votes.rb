FactoryGirl.define do
  factory :vote do

  	association :movie
  	rating :not_voted

  	trait :liked do
  		rating :liked
  	end

  	trait :disliked do
  		rating :disliked
  	end

  end

end
