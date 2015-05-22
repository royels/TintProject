class StaticController < ApplicationController
  def form
	  @tweet = Tweet.new
  end
end
