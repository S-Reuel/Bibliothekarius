class UsuarioLivrosController < ApplicationController
  before_action :set_usuario_livro, only: %i[ show edit update destroy ]

  # GET /usuario_livros or /usuario_livros.json
  def index
    @usuario_livros = UsuarioLivro.all
  end

  # GET /usuario_livros/1 or /usuario_livros/1.json
  def show
  end

  # GET /usuario_livros/new
  def new
    @usuario_livro = UsuarioLivro.new
  end

  # GET /usuario_livros/1/edit
  def edit
  end

  # POST /usuario_livros or /usuario_livros.json
  def create
    @usuario_livro = UsuarioLivro.new(usuario_livro_params)

    respond_to do |format|
      if @usuario_livro.save
        format.html { redirect_to @usuario_livro, notice: "Usuario livro was successfully created." }
        format.json { render :show, status: :created, location: @usuario_livro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usuario_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_livros/1 or /usuario_livros/1.json
  def update
    respond_to do |format|
      if @usuario_livro.update(usuario_livro_params)
        format.html { redirect_to @usuario_livro, notice: "Usuario livro was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @usuario_livro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_livros/1 or /usuario_livros/1.json
  def destroy
    @usuario_livro.destroy!

    respond_to do |format|
      format.html { redirect_to usuario_livros_path, notice: "Usuario livro was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_livro
      @usuario_livro = UsuarioLivro.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def usuario_livro_params
      params.expect(usuario_livro: [ :usuario_id, :livro_id, :preco_total, :data_aluguel, :data_prevista_devolucao, :data_devolucao, :status, :comentario ])
    end
end
