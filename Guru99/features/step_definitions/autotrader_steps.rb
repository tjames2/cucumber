

Given(/^I navigate to autotrader$/) do
  visit ''
end

Given(/^I enter my postcode of '(.*)$/) do |my_postcode|
  fill_in 'postcode', with: my_postcode
end

Given(/^I select (.*) from the (.*) drop down$/) do |user_selection, dropdown|
	puts "The dropdown variable is saved as: #{dropdown}"

	case dropdown
	when 'distance'
		dropdown_id = 'radius'
	when 'make'
		dropdown_id = 'searchVehiclesMake'
	when 'model'
		dropdown_id = 'searchVehiclesModel'
	end

	puts "The dropdown ID variable is saved as: #{dropdown_id}"

  select user_selection, from: dropdown_id
end

When(/^I click search$/) do
  click_button 'search'
  sleep (15)
end