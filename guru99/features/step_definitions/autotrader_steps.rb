

Given(/^I navigate to autotrader$/) do
  visit ''
end

Given(/^I enter my postcode of '(.*)$/) do |my_postcode|
  fill_in 'postcode', with: my_postcode
end

Given(/^I select '(.*)' from the distance drop down$/) do |distance_from_me|
  select distance_from_me, from: 'radius'
end

Given(/^I search for a Volkswagen make$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I search for a passat model$/) do

  pending # express the regexp above with the code you wish you had
end

When(/^I click search$/) do
  pending # express the regexp above with the code you wish you had
end