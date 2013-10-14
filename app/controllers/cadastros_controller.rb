class CadastrosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_cadastro, only: [:show, :edit, :update]

  # GET /cadastros/1
  # GET /cadastros/1.json
  def show
  end


  # GET /cadastros/1/edit
  def edit
  end

  # GET /cadastros/new
  def new
    unless current_user.cadastro
      @cadastro = current_user.cadastro.first
      render action: 'edit'
    else
      @cadastro = current_user.cadastro.new
    end
  end

  # POST /cadastros
  # POST /cadastros.json
  def create
    @cadastro = current_user.cadastro.new(cadastro_params)

    respond_to do |format|
      if @cadastro.save
        format.html { redirect_to @cadastro, notice: 'Cadastro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cadastro }
      else
        format.html { render action: 'new' }
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastros/1
  # PATCH/PUT /cadastros/1.json
  def update
    respond_to do |format|
      if @cadastro.update(cadastro_params)
        format.html { redirect_to @cadastro, notice: 'Cadastro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro
      @cadastro = current_user.cadastro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_params
      params.require(:cadastro).permit(:nome, :cpf, :rg, :sexo, :estado_civil, :data_nascimento, :formatted_address, :route, :street_number, :postal_code, :locality, :sublocality, :country, :country_short, :telefone, :celular)
    end
end
