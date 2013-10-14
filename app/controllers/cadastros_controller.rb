class CadastrosController < ApplicationController
  before_action :set_cadastro, only: [:show]

  # GET /cadastros/1
  # GET /cadastros/1.json
  def show
  end

  # GET /cadastros/new
  def new
    @cadastro = Cadastro.new
  end

  # POST /cadastros
  # POST /cadastros.json
  def create
    @cadastro = Cadastro.new(cadastro_params)

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro
      @cadastro = Cadastro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_params
      params.require(:cadastro).permit(:nome, :cpf, :rg, :sexo, :estado_civil, :data_nascimento, :formatted_address, :route, :street_number, :postal_code, :locality, :sublocality, :country, :country_short, :telefone, :celular)
    end
end
