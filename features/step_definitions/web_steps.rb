Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I enter a name into the form$/) do
  fill_in('player_name', :with => 'Carrie')
end

Then(/^I should be taken to a new page "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I do not enter a name into the form$/) do
  fill_in('player_name', :with => '')
end


Then(/^I should stay on the homepage "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I am on the board page$/) do
  visit '/board'
end

Given(/^I enter a board size into the form$/) do
  fill_in('board_size', :with => '2')
 end

Then(/^I should see the board$/) do
  pending # express the regexp above with the code you wish you had
end
