# encoding: utf-8

Dado /^que eu tenho uma empresa chamada "([^"]*)"$/ do |razao_social|
  Empresa.create(:razao_social => razao_social)
end

