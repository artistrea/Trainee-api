class Cart < ApplicationRecord
  # Perfeito
  belongs_to :product
  belongs_to :user
end
