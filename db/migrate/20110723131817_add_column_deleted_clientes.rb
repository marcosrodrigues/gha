class AddColumnDeletedClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :deleted, :boolean, :default => false
  end

  def self.down
    remove_column :clientes, :deleted
  end
end

