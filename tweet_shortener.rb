
# replaces long words with their expected short form from an array

def word_substituter(tweet)
  substitutes = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2", # need to come back and find a method later to make this work for a key that includes all those options
  "for" => "4",
  "For" => "4", # this is just a hack, I will come back to it
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@", 
  "and" => "&"
}
  #output_array = [] # creating an empty array in which to dumb the output
  # assumes tweet is a regular sentence
  # split returns an array, then we iterate over the array
  # this is ideal for a ternary 
  output_array = Array.new
  output_array = (tweet.split(" ").collect {|word| substitutes.keys.include?(word) ? substitutes[word] : word }).join(" ")
end


# tweet shortener #bulk_tweet_shortener shortens each tweet and prints the results
def bulk_tweet_shortener(tweets) # tweets is going to be an array of many tweets
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


# Now the client has come back to you. They love the program, but they noticed that even tweets that are under 140 characters 
# are being shortened. Now they want you to only shorten the tweet if it's too long.
# Write a new method that only does the substitutions if the tweet is longer than 140 characters. 
# If the tweet is 140 characters or shorter, just return the original tweet.
# shortens tweets that are more than 140 characters 

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? bulk_tweet_shortener(tweets) : tweet
  # this assumes the tweet is a string here, the test does not seem to test for 130 character or less, but we might as well add it
end

# Things are going great, but you're noticing that some tweets are too long still, 
# even after substituting shorter words. Being the conscientious developer that you are, 
# you talk to the client about this scenario and decide together that the best thing to do is 
# just truncate the string to 140 characters if it's still too long after you do the substitution.

# Write another method that truncates the tweet to 140 characters with an ellipsis if it's still too long after substitution. 
# E.g. "Random Passage satisfies the craving for those details that ..."

# truncates tweets over 140 characters after shortening 
# does not shorten tweets shorter than 140 characters. 

def shortened_tweet_truncator(tweet)
  # assuming tweet is a string
  if selective_tweet_shortener(tweet).length > 140
    puts "#{tweet[0..135]} ..." # is there a space before ellipsis
  else
    selective_tweet_shortener(tweet)
  end
end

