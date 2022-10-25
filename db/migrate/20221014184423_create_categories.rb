class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    # Perfeito
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
