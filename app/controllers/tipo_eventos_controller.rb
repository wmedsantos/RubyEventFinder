class TipoEventosController < ApplicationController
  before_action :set_tipo_evento, only: [:show, :edit, :update, :destroy]

  # GET /tipo_eventos
  # GET /tipo_eventos.json
  def index
    @tipo_eventos = TipoEvento.all
  end

  # GET /tipo_eventos/1
  # GET /tipo_eventos/1.json
  def show
  end

  # GET /tipo_eventos/new
  def new
    @tipo_evento = TipoEvento.new
  end

  # GET /tipo_eventos/1/edit
  def edit
  end

  # POST /tipo_eventos
  # POST /tipo_eventos.json
  def create
    @tipo_evento = TipoEvento.new(tipo_evento_params)

    respond_to do |format|
      if @tipo_evento.save
        format.html { redirect_to @tipo_evento, notice: 'Tipo evento criado com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_evento }
      else
        format.html { render :new }
        format.json { render json: @tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_eventos/1
  # PATCH/PUT /tipo_eventos/1.json
  def update
    respond_to do |format|
      if @tipo_evento.update(tipo_evento_params)
        format.html { redirect_to @tipo_evento, notice: 'Tipo evento alterado com sucesso..' }
        format.json { render :show, status: :ok, location: @tipo_evento }
      else
        format.html { render :edit }
        format.json { render json: @tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_eventos/1
  # DELETE /tipo_eventos/1.json
  def destroy
    @tipo_evento.destroy
    respond_to do |format|
      format.html { redirect_to tipo_eventos_url, notice: 'Tipo evento excluído com sucesso..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_evento
      @tipo_evento = TipoEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_evento_params
      params.require(:tipo_evento).permit(:Nome)
    end
end
