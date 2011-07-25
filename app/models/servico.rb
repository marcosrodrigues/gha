class Servico < ActiveRecord::Base
  belongs_to :tipo_de_servico
  
  validates_presence_of :codigo
  validates_presence_of :nome
  validates_associated  :tipo_de_servico
  validates_presence_of :tipo_de_servico
end
