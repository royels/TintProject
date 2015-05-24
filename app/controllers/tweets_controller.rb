class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
	  @tweetval = $twitter.search(@value, result_type: "recent").take(1).collect
	  @tweetuser = @tweetval.user.screen_name
	  @tweetcountry = @tweetval.user.location
	  @tweettext = @tweetval.text
	  @sentiment = Sentimentalizer.analyze(@tweettext)['text']
	  gon.val = 3
  end
end
