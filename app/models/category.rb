class Category < ApplicationRecord
    # Perfeito. Falta apenas definir o que acontece com os produtos quando uma categoria é deletada:
    has_many :products, dependent: :destroy # https://blog.techatpower.com/the-dependent-option-for-model-associations-in-rails-3da6f0983e68
    
    validates :name, presence: :true, uniqueness: :true
end
