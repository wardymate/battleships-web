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
  visit '/'
  fill_in('player_name', :with => 'Carrie')
  fill_in('board_size', :with => '2')
  click_on("submit")
end

Given(/^I enter a board size into the form$/) do
  fill_in('board_size', :with => '2')
 end

Given(/^I do not enter a board size into the form$/) do
  fill_in('board_size', :with => '')
end

Given(/^I enter a board size of (\d+) into the form$/) do |size|
  fill_in('board_size', :with => size)
end

Then(/^I should see a board of row size (\d+)$/) do |size|
  letter = (size.to_i+64).chr
  string = letter + (size.to_s)
  expect(page).to have_content string
end

Given(/^I enter a grid coordinate "(.*?)"$/) do |coordinate|
  fill_in('cell_shot', :with => coordinate)
end

Then(/^the cell "(.*?)" should contain a "(.*?)"$/) do |cell, content|
  # save_and_open_page
  page.find_by_id(cell).should have_content(content)
end
