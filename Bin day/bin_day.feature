Feature: Bin day

Scenario: Find out when the next bin day is

GIVEN I navigate to the refuse collection home page
AND I enter the postcode 'NG33 5QE'
AND press 'Search'
WHEN I select '2B'
THEN my next collection date is 'Monday 20 Apr 2015'