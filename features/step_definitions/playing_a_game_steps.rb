require 'sinatra/base'

Then(/^click on submit$/) do
  click_on("Submit")
end

Then(/^I enter my name$/) do
  fill_in('name', with: 'name')
end

Then(/^I will see a welcome greeting$/) do
  page.has_content?("Welcome")
end

Then(/^I will see "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end

Given(/^I click on the "(.*?)" link$/) do |arg1|
  click_link(arg1)
end

Then(/^I will see a "(.*?)" message$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^I click on the "(.*?)" button$/) do |arg1|
  click_button(arg1)
end

