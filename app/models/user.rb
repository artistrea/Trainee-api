class User < ApplicationRecord
    # Perfeito. Só lembrando que no futuro é melhor deixar uma gem, como 'devise',
    # gerenciar o armazenamento de email e senha
    validates :name, presence: :true
    validates :email, presence: :true, uniqueness: :true
    validates :password, presence: :true
end
