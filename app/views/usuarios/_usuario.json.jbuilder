json.extract! usuario, :id, :nome, :email, :ra, :telefone, :password_digest, :funcao, :reputacao, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
