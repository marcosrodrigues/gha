class Cliente < ActiveRecord::Base

  SEXO = %w(Masculino Feminino)

  validates_presence_of :codigo
  validates_presence_of :nome
  validates_presence_of :sexo

end

