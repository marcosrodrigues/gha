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

ActiveRecord::Schema.define(:version => 20110802104147) do

  create_table "clientes", :force => true do |t|
    t.string   "codigo"
    t.string   "nome",       :limit => 60
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",                  :default => false
    t.string   "cpf",        :limit => 14
    t.string   "rg",         :limit => 15
    t.date     "admissao"
    t.date     "nascimento"
    t.string   "pai",        :limit => 60
    t.string   "mae",        :limit => 60
  end

  create_table "contratos", :force => true do |t|
    t.string   "codigo"
    t.integer  "titular_id"
    t.date     "carencia"
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
  end

  create_table "tipo_de_servicos", :force => true do |t|
    t.string   "codigo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
