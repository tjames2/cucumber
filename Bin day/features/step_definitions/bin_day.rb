Given(/^I navigate to the refuse collection home page$/) do
  visit ''
end


Given(/^I enter the postcode'(.*)$/) do |my_postcode|
  fill_in 'postcode', with: my_postcode
end

Given(/^I press search$/) do
click_button 'search'
  sleep (1)
end

