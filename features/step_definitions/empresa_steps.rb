# encoding: utf-8

Dado /^que eu tenho uma empresa chamada "([^"]*)"$/ do |razao_social|
  Empresa.create(:razao_social => razao_social)
end

Quando /^eu digito "([^"]*)" em "([^"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end

Quando /^eu pressiono "([^"]*)"$/ do |button|
  click_button(button)
end

Então /^eu devo ver "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

