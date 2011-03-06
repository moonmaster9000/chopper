Feature: Breaking up a string into paragraphs
  As a programmer
  I want to be able to break a string into an array of paragraphs
  So that I can do something with those paragraphs

  Scenario: Breaking up a string into an array of paragraphs with #paragraphs
    Given a string containing a single paragraph
    When I call the #paragraphs method
    Then I should get an array containing the string itself
    Given a string containing multiple paragraphs
    When I call the #paragraphs method
    Then I should get an array containing all the paragraphs in the string

  Scenario: Iterating over the paragraphs in a string with #each_paragraph 
    Given a string
    When I call the #each_paragraph method on it
    Then I should be able to iterate over all the paragraphs in the string
