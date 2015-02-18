Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I enter a name into the form$/) do
  fill_in('name', :with => 'Carrie')
end

Then(/^I should be taken to a new page "(.*?)"$/) do |text|
  visit '/Play'
  expect(page).to have_content text
end

Given(/^I do not enter a name into the form$/) do
  fill_in('name', :with => '')
end