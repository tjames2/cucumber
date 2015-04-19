Feature: Bin day

Scenario: Find out when the next bin day is

Given I navigate to the refuse collection home page
And I enter the postcode 'NG33 5QE'
And press 'Search'
When I select '2B'
Then my next collection date is 'Monday 20 Apr 2015'