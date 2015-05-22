class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.string :user
      t.string :keyword

      t.timestamps null: false
    end
  end
end
