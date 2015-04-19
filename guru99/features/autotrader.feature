@auto
Feature: test auto trader

@eos
Scenario: search for a car
Given I navigate to autotrader
And I enter my postcode of 'NG33 5QE'
And I select Within 50 miles from the distance drop down
And I select VOLKSWAGEN from the make drop down
And I select EOS from the model drop down
When I click search
Then I see EOS cars
