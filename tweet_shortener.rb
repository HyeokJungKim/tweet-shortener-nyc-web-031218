# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  key = dictionary.keys
  common = key & arr
  arr.map! do |word|
    if common.include?(word)
      dictionary[word]
    else
      word
    end
  end
  return arr.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  word = word_substituter(tweet)
  if word.length > 140
    word[0..139]
  else
    word
  end
end
