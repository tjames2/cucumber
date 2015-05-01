require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'json'
require 'rspec/expectations'
require 'capybara/poltergeist'

Capybara.register_driver :selenium_chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

WAIT_TIME = 5

Capybara.run_server = false
Capybara.app_host = "http://www.southkesteven.gov.uk/index.aspx?articleid=1427"
Capybara.ignore_hidden_elements = true
Capybara.default_wait_time = WAIT_TIME
Capybara.javascript_driver = :selenium

case ENV['browser']
when 'chrome'
Capybara.default_driver = :selenium_chrome
browser_name = 'Chrome'
when 'headless'
Capybara.default_driver = :poltergeist
browser_name = 'Poltergeist'
else
Capybara.default_driver = :selenium
browser_name = 'Firefox'
end

puts "Tests running on #{browser_name}"
  
     


