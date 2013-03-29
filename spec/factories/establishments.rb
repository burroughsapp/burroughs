# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :establishment do
    name "MyString"
    description "MyText"
    start_year 1
    end_year 1
  end
end
