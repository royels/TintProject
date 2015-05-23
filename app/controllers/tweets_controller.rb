class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword]
	  @tweets = $twitter.search(@value, result_type: "recent").collect
  end
end
