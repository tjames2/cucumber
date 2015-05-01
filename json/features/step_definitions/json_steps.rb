def lookup_vehicle(vehicle_registration)
	vehicle_url = "http://www.v8s.com/vehiclelookup/#{vehicle_registration}"
	visit vehicle_url
end

Given(/^I lookup vehicle (.*)$/) do |vehicle|
  lookup_vehicle(vehicle)
end

Given(/^I receive information about vehicle (.*)$/) do |vehicle|
  lookup_vehicle(vehicle)

  json = JSON.parse find('pre').text
end

Given(/^I check the make of vehicle (.*)$/) do |vehicle|
  lookup_vehicle(vehicle)

  json = JSON.parse find('pre').text

  unless json["make"] == "Ford"
  	raise "Vehicle make is incorrect!"
  end
end

Given(/^I visit the jason test site$/) do
  visit 'http://ip.jsontest.com'
end

Then(/^the json will be something$/) do
  jsontest = find('pre').text
  puts jsontest

  json = JSON.parse jsontest

  unless json["ip"] == "195.171.22.4"
  	raise "JSON is incorrect!"
  end
end

Given(/^I visit the second json test site$/) do
  visit 'http://echo.jsontest.com/key3/value3/key2/value2/key1/value1'
end

Then(/^the json will be something else$/) do
  json = JSON.parse find('pre').text

  unless json["key1"] == "value1" &&
  		 json["key2"] == "value2" &&
  		 json["key3"] == "value3"
  	raise "JSON is incorrect!"
  end
end