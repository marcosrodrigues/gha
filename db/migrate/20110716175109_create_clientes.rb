class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :codigo
      t.string :nome, :limit => 60
      t.string :sexo

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end

