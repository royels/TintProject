class StaticController < ApplicationController
  def form
	  @tweet = Tweet.new
  end

  def display
	   
  end
end
