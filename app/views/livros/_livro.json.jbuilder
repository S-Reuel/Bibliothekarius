json.extract! livro, :id, :titulo, :quantidade_total, :quantidade_disponivel, :preco, :data_publicacao, :autor, :resumo, :nivel_preferencia, :created_at, :updated_at
json.url livro_url(livro, format: :json)
