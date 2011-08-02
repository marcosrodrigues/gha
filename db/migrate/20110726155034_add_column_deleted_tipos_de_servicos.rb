class AddColumnDeletedTiposDeServicos < ActiveRecord::Migration
  def self.up
    add_column :tipo_de_servicos, :deleted, :boolean, :default => false
  end

  def self.down
    remove_column :tipo_de_servicos, :deleted
  end
end
