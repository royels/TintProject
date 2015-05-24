class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
	  @tweets = $twitter.search(@value, result_type: "recent").take(1).collect
	  @tweetval = @tweets.next
	  @tweetuser = @tweetval.user.screen_name
	  @tweetcountry1 = @tweetval.user.location
	  @tweetcountry2 = @tweetval.place.country
	  @tweettext = @tweetval.text
	  gon.val = 3
  end
end
