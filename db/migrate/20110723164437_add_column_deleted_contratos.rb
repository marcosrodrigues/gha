class AddColumnDeletedContratos < ActiveRecord::Migration
  def self.up
    add_column :contratos, :deleted, :boolean, :default => false
  end

  def self.down
    remove_column :contratos, :deleted
  end
end

