class Evento < ActiveRecord::Base
	belongs_to :tipo_evento
	has_many :inscricoes
	has_many :avaliacoes
validates :nome,
		uniqueness: true,
		presence: true,
		length: {minimum: 10, 
			maximum:100}
validates :descricao,
		presence: true,
		length: {minimum: 10, 
			maximum:1000}
validates :datainicio, 
		presence: true
		 			
validates :datafim, 
		presence: true,
		date: { :after_or_equal_to => :datainicio}

validates :local,
		presence: true,
		length: {minimum: 10, 
			maximum:100}

validates :site,
		presence: true,
		  :format => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix  
 

validates :vagasdisponiveis, 
		numericality: { greater_than: 0, only_integer: true }

validates :imagem,
		presence: true,
		length: {minimum: 10, 
			maximum:100}

validates :palestrante,
		presence: true,
		length: {minimum: 10, 
			maximum:100}
end
