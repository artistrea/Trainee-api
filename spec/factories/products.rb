FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyString" }
    price { 1 }
    stock { 1 }
    brand {create(:brand)}
    category {create(:category)}
  end
end
