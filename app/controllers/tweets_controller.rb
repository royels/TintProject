class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
	  @tweets = $twitter.search(@value, result_type: "recent").take(1).collect
	  gon.val = 3
  end
end
