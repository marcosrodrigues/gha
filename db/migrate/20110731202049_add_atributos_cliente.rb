class AddAtributosCliente < ActiveRecord::Migration
  def self.up
    add_column :clientes, :cpf, :string, :limit => 14
    add_column :clientes, :rg, :string, :limit => 15
    add_column :clientes, :admissao, :date
    add_column :clientes, :nascimento, :date
    add_column :clientes, :pai, :string, :limit => 60
    add_column :clientes, :mae, :string, :limit => 60
  end

  def self.down
    remove_column :clientes, :cpf
    remove_column :clientes, :rg
    remove_column :clientes, :admissao
    remove_column :clientes, :nascimento
    remove_column :clientes, :pai
    remove_column :clientes, :mae
  end
end

