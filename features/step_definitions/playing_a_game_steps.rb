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

