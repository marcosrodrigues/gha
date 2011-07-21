class Contrato < ActiveRecord::Base
  belongs_to :cliente

  validates_presence_of :codigo
  validates_associated :cliente
  validates_presence_of :cliente
  validates_presence_of :data
end

