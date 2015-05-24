class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
	  @tweet = $twitter.search(@value, result_type: "recent").take(1).collect
	  @tweetval = @tweet.next
	  @tweetuser = @tweetval.user.screen_name
	  @tweetcountry = @tweetval.user.location
	  @tweettext = @tweetval.text
	  @sentiment = Sentimentalizer.analyze(@tweettext)['text']
	  gon.val = 3
  end
end
