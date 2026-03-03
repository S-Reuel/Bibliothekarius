json.extract! usuario_livro, :id, :usuario_id, :livro_id, :preco_total, :data_aluguel, :data_prevista_devolucao, :data_devolucao, :status, :comentario, :created_at, :updated_at
json.url usuario_livro_url(usuario_livro, format: :json)
