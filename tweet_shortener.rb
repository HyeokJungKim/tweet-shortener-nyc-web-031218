# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "for" => "4",
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
  return arr
end
