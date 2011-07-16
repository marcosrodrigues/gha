class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :razao_social
      t.string :nome_fantasia

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
