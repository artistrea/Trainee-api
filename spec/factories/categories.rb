FactoryBot.define do
  factory :category do
    # Quando um campo deve ser único, é necessário usar o sequence, como exemplificado em factories/users.rb
    name { "MyString" }
  end
end
