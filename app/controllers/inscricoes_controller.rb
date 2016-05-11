class InscricoesController < ApplicationController
	before_action :set_inscricao, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

	 def index
	 	@inscricoes = current_usuario.inscricoes.all
  	end

 
	def new
 		@inscricao = Inscricao.new
	end

	def create
  		#@inscricao = Inscricao.new(inscricao_params)
  		@inscricao = current_usuario.inscricoes.build(inscricao_params)

  		if @inscricao.save
        	flash[:notice] = 'Inscrição realizada!'
      	else
			flash[:error] = 'Erro ao realizar inscrição!'
      	end
      	#redirect_to evento_path(@inscricao.evento_id)
      	redirect_to :back 
	end

	def destroy
    	@inscricao.destroy
    	#redirect_to evento_path(@inscricao.evento_id)
    	redirect_to :back
  	end


	def inscricao_params
  		params.require(:inscricao).permit(:evento_id)
	end

    def set_evento
      @evento = Evento.find(params[:evento_id])
    end
	
	def set_inscricao
	  @inscricao = Inscricao.find(params[:id])
	end
end
