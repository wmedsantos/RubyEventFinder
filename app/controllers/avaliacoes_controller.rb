class AvaliacoesController < ApplicationController
	before_action :set_avaliacao, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

	def index
	 	@avaliacoes = current_usuario.avaliacoes.all
  end

 
	def new
 		@avaliacao = Avaliacao.new
	end

	def create
  		#@avaliacao = Avaliacao.new(avaliacao_params)
  		@avaliacao = current_usuario.avaliacoes.build(avaliacao_params)

  		if @avaliacao.save
       	flash[:notice] = 'Avaliação realizada!'
     	else
				flash[:error] = 'Erro ao avaliar evento!'
     	end
     	#redirect_to evento_path(@avaliacao.evento_id)
     	redirect_to :back 
	end

	def destroy
    	@avaliacao.destroy
    	#redirect_to evento_path(@avaliacao.evento_id)
    	redirect_to :back
  	end


	def avaliacao_params
  		params.require(:avaliacao).permit(:evento_id,:nota,:texto)
	end

    def set_evento
      @evento = Evento.find(params[:evento_id])
    end
	
	def set_avaliacao
	  @avaliacao = Avaliacao.find(params[:id])
	end
end
