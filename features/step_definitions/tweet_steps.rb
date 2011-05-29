Given /^a string representing a tweet longer than 140 words$/ do
  @tweet_string = "this is a really long tweet. can you believe how long it is? i hope it's not too long, because if it goes over 140 characters, then I can't tweet it. Or can I?"
end

When /^I call the \#tweets method on it$/ do
  @tweets = @tweet_string.tweets
  puts @tweets.inspect
end

Then /^I should get an array of strings breaking up the original string into 140 character chunks$/ do
  @tweets.all? {|t| t.length <= 140}.should be_true
end

When /^I call the \#tweets method on it with a custom delimeter$/ do
  @delimiter = "... cont'd"
  @tweets = @tweet_string.tweets :delimiter => @delimiter
  puts "@tweets with custom delimiter = #{@tweets.inspect}"
end

Then /^I should get an array of string breakinup up the original string into 140 character chunks using my custom delimeter$/ do
  Then "I should get an array of strings breaking up the original string into 140 character chunks"
  @tweets[0..-2].all? {|t| t.match @delimiter}.should be_true
  @tweets[-1].match(@delimiter).should_not be_true
end

Given /^an @reply tweet string that's longer than 140 character$/ do
  @tweet_string = "@moonmaster9000 this is a really long tweet. can you believe how long it is? i hope it's not too long, because if it goes over 140 characters, then I can't tweet it. Or can I?"
end

Then /^each of those chunks should begin with the @reply$/ do
  @tweets.all? {|t| t.match /^@moonmaster9000\ .+$/}.should be_true
end

Given /^a string representing a tweet less than 140 characters$/ do
  @tweet_string = "short tweet!"
end

Then /^I should get back the tweet encapsulated in an array$/ do
  @tweets.should == [@tweet_string]
end

Given /^a string representing an @reply tweet less than 140 characters$/ do
  @tweet_string = "@moonmaster9000 short reply!"
end
