class Contrato < ActiveRecord::Base
  belongs_to :cliente

  has_and_belongs_to_many :dependentes, :class_name => "Cliente", :join_table => "dependentes_contrato",
    :association_foreign_key => "cliente_id"

  validates_presence_of :codigo
  validates_presence_of :data
  validates_associated :cliente
  validates_presence_of :cliente
end

