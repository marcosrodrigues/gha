# encoding: utf-8

Quando /^eu vou na página clientes$/ do
  visit "/cliente/index"
end

Dado /^que eu tenho um cliente chamado "([^"]*)"$/ do |nome|
  Cliente.create!(:codigo => "000001", :nome => nome, :sexo => "Masculino")
end

