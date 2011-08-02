class RenameDataContrato < ActiveRecord::Migration
  def self.up
    rename_column :contratos, :data, :carencia
  end

  def self.down
    rename_column :contratos, :carencia, :data
  end
end

