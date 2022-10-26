class CreateUsers < ActiveRecord::Migration[6.0]
  # Ótimo, apenas algumas sugestões
  def change
    create_table :users do |t|
      t.string :name

      ###########
      # Quando começarmos a usar gems para gerenciar permissões, é bom não fazer esses campos
      # manualmente, e deixar o devise fazer e gerenciar essas coisas
      t.string :email
      t.string :password
      ###########

      ###########
      # É uma boa colocar nomes mais sugestivos, como price_in_cents, para que fique mais claro
      # o propósito do campo
      t.integer :wallet
      ###########
      
      t.boolean :is_admin

      t.timestamps
    end
  end
end
