require "pry"

def dictionary
  {
  "hello" => "hi",
  "to" => "2", "two" => "2", "too" => "2",
"for" => "4", "For" => "4", "four" => "4",
"be" => "b",
"you" => "u",
"at" => "@",
"and" => "&"}
end

def word_substituter(string)
  new_string = []
   string.split.each do |word|
    if dictionary.keys.include?(word)
      new_string << word = dictionary[word]
    else
      new_string << word
    end
  end
string = new_string.join(" ")
#binding.pry
end

def bulk_tweet_shortener(tweets)
  new_tweets = []
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
  #
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
    #binding.pry
  elsif tweet.size <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  new_tweet[0..139]
  #binding.pry
end
