class TipoEvento < ActiveRecord::Base
	has_many :evento
validates :Nome,
		uniqueness: true,
		presence: true,
		length: {minimum: 5, 
			maximum:100}
end
