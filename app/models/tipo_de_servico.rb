class TipoDeServico < ActiveRecord::Base
  validates_presence_of :codigo
  validates_presence_of :nome
end
