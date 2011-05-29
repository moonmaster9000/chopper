Given /^a string containing a single paragraph$/ do
  @string = "blah"
end

When /^I call the \#paragraphs method$/ do
  @paragraphs = @string.paragraphs
end

Then /^I should get an array containing the string itself$/ do
  @paragraphs.length.should == 1
  @paragraphs.first.should == @string
end

Given /^a string containing multiple paragraphs$/ do
  @string = "blah 1\nblah 2\n\nblah 3\n"
end

Then /^I should get an array containing all the paragraphs in the string$/ do
  @paragraphs.length.should == 3
  @paragraphs.should == ["blah 1", "blah 2", "blah 3"]
end
