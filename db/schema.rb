# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110726155207) do

  create_table "clientes", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",    :default => false
  end

  create_table "contratos", :force => true do |t|
    t.string   "codigo"
    t.integer  "cliente_id"
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",    :default => false
  end

  create_table "dependentes_contrato", :id => false, :force => true do |t|
    t.integer "contrato_id", :null => false
    t.integer "cliente_id",  :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string   "razao_social"
    t.string   "nome_fantasia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicos", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.integer  "tipo_de_servico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",            :default => false
  end

  create_table "tipo_de_servicos", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",    :default => false
  end

end
