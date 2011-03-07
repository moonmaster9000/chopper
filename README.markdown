# Chopper

Chop your strings into pieces like a pro! Chopper will satisfy all of your string cleaving needs!

## Install

    $ gem install chopper

## Chop Suey

Chopper helps you chop your strings into smaller pieces. You can:

* Chop a book into paragraphs
* Chop a poem into stanzas
* Chop a stanza into lines
* Chop a 312 page manifesto on how the government secretely puts computer chips in your brain into tweets

The full list of methods added to string (see http://rubydoc.info/gems/chopper for all of the detailed documentation):

* String#paragraphs
* String#each_paragraph
* String#tweets
* String#each_tweet
* String#stanza
* String#each_stanza
* String#lines
* String#each_line

## each_<type> v. <type>s

For each way you can slice your string, you can do it with or without blocks. Try paragraphs:

    # convert your book string into an array of paragraphs
    
    book.paragraphs #==> ["paragraph 1", "paragraph 2", ....]
    
    # or....

    book.each_paragraph { |paragraph| p paragraph }

## Tweets

You can break up a string into 140 character chunks using the `#tweets` or `#each_tweet` method on `String` instances. It will break on the nearest word boundary
(instead of chopping the tweet in the middle of a word). It also allows you to choose the delimeter - it defaults to `...` 

    my_tweet = "This tweet is over the 140 character limit, unfortunately. Now I'll have to break the tweet up into smaller tweets. Well, that's just great. Gosh Darnit! Arrrghhhhh!"
    my_tweet.tweets 
      #==> [
        "This tweet is over the 140 character limit, unfortunately. Now I'll have to break the tweet up into smaller tweets. Well, that's just ...", 
        "great. Gosh Darnit! Arrrghhhhh!"
      ]
    my_tweet.each_tweet do |tweet|
      p tweet
    end

## Public Domain

This software is committed to the public domain. No license. No copyright. DO ANYTHING!
