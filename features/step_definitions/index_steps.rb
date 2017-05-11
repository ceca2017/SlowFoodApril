When(/^I visit the landing page$/) do
  visit root_path
end

Then(/^I should see Restaurant "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following restaurants exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end