class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword] 
	  $twitter.update("I finally got the twitter api to work!....If I can read this")
  end
end
