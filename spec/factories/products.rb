FactoryBot.define do
  factory :product do
    # Quando um campo deve ser único, é necessário usar o sequence, como exemplificado em factories/users.rb
    name { "MyString" }
    price { 1 }
    # O ideal é que a factory contenha sempre o mínimo necessário para criar um objeto válido.
    # stock e description estão como opcionais, portanto é melhor deixá-los em branco
    description { nil }
    stock { nil }

    brand {create(:brand)}
    category {create(:category)}
  end
end
