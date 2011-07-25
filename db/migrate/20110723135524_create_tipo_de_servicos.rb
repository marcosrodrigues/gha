class CreateTipoDeServicos < ActiveRecord::Migration
  def self.up
    create_table :tipo_de_servicos do |t|
      t.string :codigo
      t.string :nome
      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_de_servicos
  end
end
