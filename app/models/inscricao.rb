class Inscricao < ActiveRecord::Base
  belongs_to :evento
  belongs_to :usuario


  validates :evento_id, uniqueness: { scope: [:evento_id, :usuario_id] }
end
