FactoryBot.define do
  factory :user do
    name { "MyString" }
    # Quando um campo deve ser único, como email, é necessário usar o sequence,
    # como feito em https://github.dev/StructCE/trainee-api-2022-2/blob/edfb607c8be184a801929d5f0af405d4572ce80f/spec/factories/movies.rb#L9
    # para os nomes de filmes.
    email { "MyString" }
    password { "MyString" }

    # O ideal é que a factory contenha sempre o mínimo necessário para criar um objeto válido.
    # Como wallet e is_admin são campos opcionais, não é necessário criar valor para eles.
    # Caso não se queira que esses campos sejam opcionais, mudar as validações da model.
    wallet { 1 }
    is_admin { false }
  end
end

# # Exemplo de como deveria ficar:

# FactoryBot.define do
#
#   sequence :user_emails do |n|
#     "email #{n}"
#   end
#
#   factory :user do
#     name { "MyString" }
#     email { generate(:user_emails) }
#     password { "MyString" }
#     wallet { nil }
#     is_admin { nil }
#   end
# end
