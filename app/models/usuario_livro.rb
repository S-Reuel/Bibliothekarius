class UsuarioLivro < ApplicationRecord
  belongs_to :usuario
  belongs_to :livro

  enum status, {
    alugado: 0,
    em_atraso: 1,
    devolvido: 2
  }
end
