# encoding: utf-8

Quando /^eu vou na página de login$/ do
  visit "/login/index"
end

Quando /^eu clico em "([^"]*)"$/ do |link|
  click_link(link)
end

Quando /^eu seleciono "([^"]*)" em "([^"]*)"$/ do |value, field|
  pending # express the regexp above with the code you wish you had
end

