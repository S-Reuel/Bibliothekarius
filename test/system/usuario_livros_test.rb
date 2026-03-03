require "application_system_test_case"

class UsuarioLivrosTest < ApplicationSystemTestCase
  setup do
    @usuario_livro = usuario_livros(:one)
  end

  test "visiting the index" do
    visit usuario_livros_url
    assert_selector "h1", text: "Usuario livros"
  end

  test "should create usuario livro" do
    visit usuario_livros_url
    click_on "New usuario livro"

    fill_in "Comentario", with: @usuario_livro.comentario
    fill_in "Data aluguel", with: @usuario_livro.data_aluguel
    fill_in "Data devolucao", with: @usuario_livro.data_devolucao
    fill_in "Data prevista devolucao", with: @usuario_livro.data_prevista_devolucao
    fill_in "Livro", with: @usuario_livro.livro_id
    fill_in "Preco total", with: @usuario_livro.preco_total
    fill_in "Status", with: @usuario_livro.status
    fill_in "Usuario", with: @usuario_livro.usuario_id
    click_on "Create Usuario livro"

    assert_text "Usuario livro was successfully created"
    click_on "Back"
  end

  test "should update Usuario livro" do
    visit usuario_livro_url(@usuario_livro)
    click_on "Edit this usuario livro", match: :first

    fill_in "Comentario", with: @usuario_livro.comentario
    fill_in "Data aluguel", with: @usuario_livro.data_aluguel
    fill_in "Data devolucao", with: @usuario_livro.data_devolucao
    fill_in "Data prevista devolucao", with: @usuario_livro.data_prevista_devolucao
    fill_in "Livro", with: @usuario_livro.livro_id
    fill_in "Preco total", with: @usuario_livro.preco_total
    fill_in "Status", with: @usuario_livro.status
    fill_in "Usuario", with: @usuario_livro.usuario_id
    click_on "Update Usuario livro"

    assert_text "Usuario livro was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario livro" do
    visit usuario_livro_url(@usuario_livro)
    click_on "Destroy this usuario livro", match: :first

    assert_text "Usuario livro was successfully destroyed"
  end
end
