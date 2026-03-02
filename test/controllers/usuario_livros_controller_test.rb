require "test_helper"

class UsuarioLivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_livro = usuario_livros(:one)
  end

  test "should get index" do
    get usuario_livros_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_livro_url
    assert_response :success
  end

  test "should create usuario_livro" do
    assert_difference("UsuarioLivro.count") do
      post usuario_livros_url, params: { usuario_livro: { comentario: @usuario_livro.comentario, data_aluguel: @usuario_livro.data_aluguel, data_devolucao: @usuario_livro.data_devolucao, data_prevista_devolucao: @usuario_livro.data_prevista_devolucao, livro_id: @usuario_livro.livro_id, preco_total: @usuario_livro.preco_total, status: @usuario_livro.status, usuario_id: @usuario_livro.usuario_id } }
    end

    assert_redirected_to usuario_livro_url(UsuarioLivro.last)
  end

  test "should show usuario_livro" do
    get usuario_livro_url(@usuario_livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_livro_url(@usuario_livro)
    assert_response :success
  end

  test "should update usuario_livro" do
    patch usuario_livro_url(@usuario_livro), params: { usuario_livro: { comentario: @usuario_livro.comentario, data_aluguel: @usuario_livro.data_aluguel, data_devolucao: @usuario_livro.data_devolucao, data_prevista_devolucao: @usuario_livro.data_prevista_devolucao, livro_id: @usuario_livro.livro_id, preco_total: @usuario_livro.preco_total, status: @usuario_livro.status, usuario_id: @usuario_livro.usuario_id } }
    assert_redirected_to usuario_livro_url(@usuario_livro)
  end

  test "should destroy usuario_livro" do
    assert_difference("UsuarioLivro.count", -1) do
      delete usuario_livro_url(@usuario_livro)
    end

    assert_redirected_to usuario_livros_url
  end
end
