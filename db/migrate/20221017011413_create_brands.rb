class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name

      t.timestamps
    end
    # Um index de unique é uma boa, para garantir que não teremos duas marcas com o mesmo nome
    # exatamente como foi feito na tabela category:
    # add_index :brands, :name, unique: true
  end
end
