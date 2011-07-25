# encoding: utf-8

Quando /^eu vou na página tipos de serviços$/ do
  visit "/tipo_de_servico/index"
end

Dado /^que eu tenho um tipo de servico chamado "([^"]*)"$/ do |nome|
  TipoDeServico.create!(:codigo => "001", :nome => nome)
end


