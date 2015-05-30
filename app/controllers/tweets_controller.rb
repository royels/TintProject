class TweetsController < ApplicationController
  def display
	  value = params[:tweet][:keyword]
	  $twitter.search(value, result_type: "").take(1).collect do |tweet|
		  tweetuser = tweet.user.screen_name
		  tweetcountry = tweet.user.location
		  tweettext = tweet.text
		  sentiment = Sentimentalizer.analyze(tweettext).overall_probability
		  Tweet.create(content: tweettext, user: tweetuser, location: tweetcountry, keyword: value, sentiment: sentiment)
	  end
	  @client = Tweet.where("keyword = ?", params[:tweet][:keyword])
  end
end