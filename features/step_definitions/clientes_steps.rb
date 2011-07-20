# encoding: utf-8

Quando /^eu vou na página clientes$/ do
  visit "/cliente/index"
end

Dado /^que eu tenho um cliente chamado "([^"]*)"$/ do |nome|
  Cliente.create(:nome => nome)
end

