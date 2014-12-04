# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
  	sequence(:title) {|n| "MyString#{n}"}
    year 1985
    duration 1
    synopsis "Once upon a time..."
  end
end
