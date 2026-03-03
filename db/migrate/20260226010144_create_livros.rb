class CreateLivros < ActiveRecord::Migration[8.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.integer :quantidade_total
      t.integer :quantidade_disponivel
      t.decimal :preco
      t.date :data_publicacao
      t.string :autor
      t.text :resumo
      t.integer :nivel_preferencia

      t.timestamps
    end
  end
end
