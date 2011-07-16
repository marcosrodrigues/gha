# encoding: utf-8

Quando /^eu vou na página de login$/ do
  visit "/login/index"
end

Quando /^eu clico em "([^"]*)"$/ do |link|
  click_link(link)
end

