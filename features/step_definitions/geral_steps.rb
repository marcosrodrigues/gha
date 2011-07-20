# encoding: utf-8

Quando /^eu clico em "([^"]*)"$/ do |link|
  click_link(link)
end

Quando /^eu seleciono "([^"]*)" em "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

Quando /^eu seleciono a data "([^\"]*)" em "([^\"]*)"$/ do |date, field|
  date = Chronic.parse(date)

  select date.day.to_s, :from => "contrato[#{field}(3i)]"
  select date.strftime('%B'), :from => "contrato[#{field}(2i)]"
  select date.year.to_s, :from => "contrato[#{field}(1i)]"
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

