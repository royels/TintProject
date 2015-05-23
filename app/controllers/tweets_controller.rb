class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
#	  @tweets = $twitter.search(@value, result_type: "recent").take(3).collect
  end
end
