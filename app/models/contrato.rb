class Contrato < ActiveRecord::Base
  belongs_to :titular, :class_name => "Cliente"

  has_and_belongs_to_many :dependentes, :class_name => "Cliente", :join_table => "dependentes_contrato",
    :association_foreign_key => "cliente_id"

  validates_presence_of :codigo
  validates_presence_of :carencia
  validates_associated :titular
  validates_presence_of :titular
end

