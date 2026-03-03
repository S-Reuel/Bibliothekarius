class Usuario < ApplicationRecord
  attr_readonly :password
  require "securerandom"
  require "jwt"

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }
  FORMATO_EMAIL_VALIDO= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: { maximum: 260 }, uniqueness: true, format: { with: FORMATO_EMAIL_VALIDO }
  validates :nome, presence: true, length: { maximum: 50 }
  before_save { self.email = email.downcase }

  has_many :usuario_livros
  has_many :livros, through: :usuario_livros

  enum :funcao, {
    gestor: 0,
    adm: 1,
    usuario: 2
  }

  enum :reputacao, {
    pessima: 0,
    ruim: 1,
    neutra: 2,
    boa: 3,
    otima: 4
  }
end
