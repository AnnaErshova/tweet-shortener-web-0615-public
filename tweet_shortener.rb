
# replaces long words with their expected short form from an array

def word_substituter(tweet)
  substitutes = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2", # need to come back and find a method later to make this work for a key that includes all those options
  "for, four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@", 
  "and" => "&"
}
  output_array = [] # creating an empty array in which to dumb the output
  # assumes tweet is a regular sentence
  # split returns an array, then we iterate over the array
  # this is ideal for a ternary 
  output_array = (tweet.split(" ").collect {|word| substitutes.keys.include?(word) ? substitutes[word] : word }).join(" ")
end

# shortens each tweet and prints the results
# shortens tweets that are more than 140 characters 
# does not shorten tweets that are less than 130 characters 
# truncates tweets over 140 characters after shortening 
# does not shorten tweets shorter than 140 characters. 

def bulk_tweet_shortener(tweets)
end

def selective_tweet_shortener
end

def shortened_tweet_truncator
end

