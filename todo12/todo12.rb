require "debugger"
# 1. Write a method to shorten a string based on the allowed substitutes
substitutes = {
  'to' => '2',
  'two' => '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
}
def shorten_tweet(tweet, substitutes)
  tweet.split(" ").map do |word|
    word = substitutes[word] || word
  end.join(" ")
end
string = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
p shorten_tweet(string, substitutes)

# 2. Write a method that iterates over the list of tweets, shortens them, and
# prints the results to the screen
tweets = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
          "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
          "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
          "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
]
def shorten_tweets(tweets, substitutes)
  tweets.map do |tweet|
    tweet.split(" ").map do |word|
      word = substitutes[word] || word
    end.join(" ")
  end
end
# puts shorten_tweets(tweets, substitutes)

# 3. Modify your program to only do the substitutions if the tweet is longer
#  than 140 characters
def shorten_tweets_over_140(tweets, substitutes)
  # collection = []
  tweets.map do |tweet|
    if tweet.size > 140
      tweet.split(" ").map do |word|
        word = substitutes[word] || word
      end.join(" ")
    else
      tweet
    end
  end
end
# puts shorten_tweets_over_140(tweets, substitutes)

# 4. Modify your program to truncate the tweet to 140 characters if it's still
#  too long after substitution
def truncate_tweets_over_140(tweets, substitutes)
  tweets.map do |tweet|
    if tweet.size > 140
      new_tweet = tweet.split(" ").map do |word|
        word = substitutes[word] || word
      end.join(" ")
      if new_tweet.size > 140
        new_tweet[0..137] + "..."
      else
        new_tweet
      end
    else
      tweet
    end
  end
end
# puts truncate_tweets_over_140(tweets, substitutes)