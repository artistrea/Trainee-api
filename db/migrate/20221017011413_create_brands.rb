class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name

      t.timestamps
    end
    # Um index de unique é uma boa, para garantir que não teremos duas marcas com o mesmo nome
    # exatamente como foi feito na tabela category. Para alterar isso depois da model já estar cridada,
    # basta rodar o comando
    #   rails g migration add_index_to_brand
    # e então adicionar o código que fiz em /20221025173743_add_index_to_brand.rb
  end
end
