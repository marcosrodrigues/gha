class Cliente < ActiveRecord::Base

  has_many :contratos

  SEXO = %w(Masculino Feminino)

  validates_presence_of :codigo, :message => "Informe o codigo do cliente"
  validates_presence_of :nome, :message => "Informe o nome do cliente"
  validates_presence_of :sexo

end

