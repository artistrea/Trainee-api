class Brand < ApplicationRecord
    # Perfeito. Falta apenas definir o que acontece com os produtos quando uma marca é deletada:
    has_many :products, dependent: :destroy # https://blog.techatpower.com/the-dependent-option-for-model-associations-in-rails-3da6f0983e68
    
    # Talvez seja uma boa ideia validar unicidade do nome da marca também, assim como feito em categoria
    # Não devem existir duas Nike, por exemplo.
    validates :name, presence: :true
end
