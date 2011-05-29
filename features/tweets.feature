Feature: Breaking up a string into tweets
  As a programmer
  I want to break up a string into tweets
  So that I can tweet the string to twitter

  Scenario: Breaking up a string into tweets when that string is already less than 140 character
    Given a string representing a tweet less than 140 characters
    When I call the #tweets method on it
    Then I should get back the tweet encapsulated in an array

  Scenario: Breaking up a string into tweets
    Given a string representing a tweet longer than 140 words
    When I call the #tweets method on it
    Then I should get an array of strings breaking up the original string into 140 character chunks
  
  Scenario: Specifying the delimiter to use when a string is broken up into tweet chunks
    Given a string representing a tweet longer than 140 words
    When I call the #tweets method on it with a custom delimeter
    Then I should get an array of string breakinup up the original string into 140 character chunks using my custom delimeter

  Scenario: Breaking up an @reply into tweets when that @reply is already less than 140 character
    Given a string representing an @reply tweet less than 140 characters
    When I call the #tweets method on it
    Then I should get back the tweet encapsulated in an array

  Scenario: Recognizing an @reply tweet, and putting the @reply on all chunks
    Given an @reply tweet string that's longer than 140 character
    When I call the #tweets method on it
    Then I should get an array of strings breaking up the original string into 140 character chunks
    And each of those chunks should begin with the @reply 
