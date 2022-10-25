class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    # Ótimo, apenas mudaria o nome da Model para CartProduct, para ficar mais claro que 
    # cada linha da tabela representa um produto no carrinho, não um carrinho completo
    create_table :carts do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
