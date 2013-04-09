# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :source do
    content "MyText"
    sourceable_id 1
    sourceable_type "MyString"
  end
end
