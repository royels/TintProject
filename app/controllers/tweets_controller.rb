class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword] 
	  $twitter.update(@value)
  end
end
