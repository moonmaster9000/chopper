Feature: Breaking up a string into tweets
  As a programmer
  I want to break up a string into tweets
  So that I can tweet the string to twitter

  Scenario: Breaking up a string into tweets
    Given a string
    When I call the #tweets method on it
    Then I should get an array of strings breaking up the original string into 140 character chunks
    And those chunks should not break in the middle of a word
  
  Scenario: Specifying the ellipses to use when a string is broken up into tweet chunks
    Given a string
    When I call the #tweets method on it with a custom delimeter
    Then I should get an array of string breakinup up the original string into 140 character chunks using my custom delimeter
    And those chunks should not break in the middle of a word
