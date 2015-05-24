class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
	  $twitter.search(@value, result_type: "recent").take(1).collect do |tweet|
		  @tweetuser = tweet.user.screen_name
		  @tweetcountry = tweet.user.location
		  @tweettext = tweet.text
	  	  @sentiment = Sentimentalizer.analyze(@tweettext)[	  
	  end
	  gon.val = 3
  end
end

