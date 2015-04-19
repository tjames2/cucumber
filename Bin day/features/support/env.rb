require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'


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
  when 'firefox', 'ff'
    Capybara.default_driver = :selenium
    browser_name = 'Firefox'
  else
    Capybara.default_driver = :selenium_chrome
    browser_name = 'Chrome'
end

puts "Tests running on #{browser_name}"
  
     


