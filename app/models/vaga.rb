class Vaga < ApplicationRecord
   validates :empresa, :titulo, :localizacao, 
   :contrato, :jornada, :local, :link, :descricao, presence: true

end
