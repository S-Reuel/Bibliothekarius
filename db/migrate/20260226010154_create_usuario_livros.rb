class CreateUsuarioLivros < ActiveRecord::Migration[8.0]
  def change
    create_table :usuario_livros do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :livro, null: false, foreign_key: true
      t.decimal :preco_total
      t.date :data_aluguel
      t.date :data_prevista_devolucao
      t.date :data_devolucao
      t.integer :status
      t.string :comentario

      t.timestamps
    end
  end
end
