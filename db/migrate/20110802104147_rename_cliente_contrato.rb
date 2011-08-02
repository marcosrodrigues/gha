class RenameClienteContrato < ActiveRecord::Migration
  def self.up
    rename_column :contratos, :cliente_id, :titular_id
  end

  def self.down
    rename_column :contratos, :titular_id, :cliente_id
  end
end

