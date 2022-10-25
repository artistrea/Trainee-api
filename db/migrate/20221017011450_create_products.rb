class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    # Ótimo
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :stock
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
