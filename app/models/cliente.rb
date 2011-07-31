class Cliente < ActiveRecord::Base

  has_many :contratos

  SEXO = %w(Masculino Feminino)

  validates_presence_of :codigo
  validates_presence_of :nome
  validates_presence_of :admissao

end

