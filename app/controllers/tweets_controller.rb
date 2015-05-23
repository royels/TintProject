class TweetsController < ApplicationController
  def display
	  @value = params[:tweet][:keyword] 
  end
end
