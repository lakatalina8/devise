# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :new_item do
    name "MyString"
    category_id 1
  end
end
