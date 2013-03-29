# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :existence do
    location nil
    establishment nil
    description "MyText"
    start_year 1
    end_year 1
  end
end
