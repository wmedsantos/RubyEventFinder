class Avaliacao < ActiveRecord::Base
  belongs_to :Evento
  belongs_to :Usuario

	validates :nota,
		:inclusion => { :in => 1..5, :message => "A nota só pode ser de 1 a 5" }
	validates :texto,		
		length: {minimum: 10, maximum:140}

end
