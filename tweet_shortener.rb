
# replaces long words with their expected short form

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
  # assume tweet is a regular sentence
  output_tweet = tweet.split(" ") # returns an array
  output_array = output_tweet.collect do |word| # iterate over the array
    if substitutes.keys.include?(word) 
      word = substitutes[word]
    else
      word
    end
  end
  output_array.join(" ") # convert it back from array into string
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

