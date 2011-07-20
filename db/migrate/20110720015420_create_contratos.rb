class CreateContratos < ActiveRecord::Migration
  def self.up
    create_table :contratos do |t|
      t.string :codigo
      t.references :cliente
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :contratos
  end
end
