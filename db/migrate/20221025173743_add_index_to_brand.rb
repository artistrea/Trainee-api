class AddIndexToBrand < ActiveRecord::Migration[6.0]
  def change
    add_index :brands, :name, unique: true
  end
end
