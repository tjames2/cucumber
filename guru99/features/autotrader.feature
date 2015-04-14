@auto

Feature: tets auto trader

Scenario: seach for a car

Given I navigate to autotrader
And I enter my postcode of 'NG33 5QE'
And I select 'Within 50 miles' from the distance drop down
And I search for a Volkswagen make
And I search for a passat model
When I click search
