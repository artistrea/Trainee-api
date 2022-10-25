class Product < ApplicationRecord
  # Ótimo. Novamente, :price poderia ser mais descritivo, como :price_in_cents
  belongs_to :brand
  belongs_to :category
  validates :price, presence: :true 
  #################
  # validações desnescessárias, pois por padrão o rails não permite que seja criado
  # uma model que pertence a outra sem receber o id da model a qual pertence

  # validates :brand_id, presence: :true
  # validates :category_id, presence: :true
  #################
end
