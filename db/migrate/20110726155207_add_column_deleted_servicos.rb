class AddColumnDeletedServicos < ActiveRecord::Migration
  def self.up
    add_column :servicos, :deleted, :boolean, :default => false
  end

  def self.down
    remove_column :servicos, :deleted
  end
end
