#require 'watir-webdriver'
 
#--require 'colorize'

 #browser = Watir::Browser.new
 
 
Given (/^I am on the Guru homepage$/)do
  browser.goto "http://demo.guru99.com"

end
 
When (/^I enter blank details to register$/)do
  browser.text_field(:name,"emailid").set (" ")
  browser.button(:name,"btnLogin").click


end
 
Then (/^error email shown$/)do
  puts "Email is required!".red
  browser.close

end

