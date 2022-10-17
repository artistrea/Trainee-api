FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyString" }
    price { 1 }
    stock { 1 }
    brand {Brand}
    category {Category}
  end
end
