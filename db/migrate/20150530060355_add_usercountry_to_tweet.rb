class AddUsercountryToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :location, :string
  end
end
