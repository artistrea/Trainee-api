FactoryBot.define do
  factory :brand do
    # Quando um campo deve ser único, é necessário usar o sequence, como exemplificado em factories/users.rb
    # Nesse caso o campo name não foi validado como único na model, mas deveria ser.
    name { "MyString" }
  end
end
