# Chopper

Chop your strings into pieces like a pro! Chopper will satisfy all of your string cleaving needs!

## Install

    $ gem install chopper

## Chop Suey

Chopper helps you chop your strings into smaller pieces. You can:

* Chop a book into paragraphs
* Chop a 312 page manifesto on how the government secretely puts computer chips in your brain into tweets

The full list of methods added to string (see http://rubydoc.info/gems/chopper for all of the detailed documentation):

* String#paragraphs
* String#tweets

## Tweets

You can break up a string into 140 character chunks using the `#tweets` method on `String` instances. It will break on the nearest word boundary
(instead of chopping the tweet in the middle of a word). It also allows you to choose the delimeter - it defaults to `...` 

    my_tweet = 
      "This tweet is over the 140 character limit, unfortunately. " +
      "Now I'll have to break the tweet up into smaller tweets. " + 
      "Well, that's just great. Gosh Darnit! Arrrghhhhh!"
    
    my_tweet.tweets 
      #==> [
        "This tweet is over the 140 character limit, unfortunately. Now I'll have to break the tweet up into smaller tweets. Well, that's just ...", 
        "great. Gosh Darnit! Arrrghhhhh!"
      ]
    
    my_tweet.tweets :delimeter => "... (more)"
      #==> [
        "This tweet is over the 140 character limit, unfortunately. Now I'll have to break the tweet up into smaller tweets. Well, that's ... (more)", 
        "just great. Gosh Darnit! Arrrghhhhh!"
      ]

    my_tweet.each_tweet do |tweet|
      p tweet
    end

### @reply tweets

Chopper will detect @reply tweets (tweets that start with a twitter handle), and will prepend the handle to all tweets:

  string = "@moonmaster9000 this is a really long tweet. can you believe how long it is? i hope it's not too long, because if it goes over 140 characters, then I can't tweet it. Or can I?"
  string.tweets
    #==> [
      "@moonmaster9000 this is a really long tweet. can you believe how long it is? i hope it's not too long, because if it goes over 140 ...", 
      "@moonmaster9000 characters, then I can't tweet it. Or can I?"
    ]

## Public Domain

This software is committed to the public domain. No license. No copyright. DO ANYTHING!
