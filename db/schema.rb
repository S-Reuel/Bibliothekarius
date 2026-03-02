# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_02_26_014204) do
  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.integer "quantidade_total"
    t.integer "quantidade_disponivel"
    t.decimal "preco"
    t.date "data_publicacao"
    t.string "autor"
    t.text "resumo"
    t.integer "nivel_preferencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario_livros", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "livro_id", null: false
    t.decimal "preco_total"
    t.date "data_aluguel"
    t.date "data_prevista_devolucao"
    t.date "data_devolucao"
    t.integer "status"
    t.string "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["livro_id"], name: "index_usuario_livros_on_livro_id"
    t.index ["usuario_id"], name: "index_usuario_livros_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "ra"
    t.string "telefone"
    t.string "password_digest"
    t.integer "funcao"
    t.integer "reputacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "usuario_livros", "livros"
  add_foreign_key "usuario_livros", "usuarios"
end
