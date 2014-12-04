FactoryGirl.define do
  factory :vote do

  	association :movie
  	amount 0

  	trait :liked do
  		amount 1
  	end

  	trait :disliked do
  		amount -1
  	end

  end

end
