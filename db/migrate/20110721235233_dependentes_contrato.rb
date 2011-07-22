class DependentesContrato < ActiveRecord::Migration
  def self.up
    create_table :dependentes_contrato, :id => false do |t|
      t.references :contrato, :null => false
      t.references :cliente, :null => false
    end
  end

  def self.down
    drop_table :dependentes_contrato
  end
end

