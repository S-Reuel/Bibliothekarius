class CreateUsuarios < ActiveRecord::Migration[8.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :ra
      t.string :telefone
      t.string :password_digest
      t.integer :funcao
      t.integer :reputacao

      t.timestamps
    end
  end
end
