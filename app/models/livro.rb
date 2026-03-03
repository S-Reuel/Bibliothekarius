class Livro < ApplicationRecord
  has_many :usuario_livros
  has_many :usuarios, through: :usuario_livros

  enum preferencia, {
    baixa: 0,
    media: 1,
    alta: 2
  }
end
