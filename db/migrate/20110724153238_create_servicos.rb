class CreateServicos < ActiveRecord::Migration
  def self.up
    create_table :servicos do |t|
      t.string :codigo
      t.string :nome
      t.references :tipo_de_servico
      
      t.timestamps
    end
  end

  def self.down
    drop_table :servicos
  end
end
