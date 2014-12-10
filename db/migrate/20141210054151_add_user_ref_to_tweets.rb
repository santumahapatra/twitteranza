class AddUserRefToTweets < ActiveRecord::Migration
  def change
    add_reference :tweets, :user_id, index: true
  end
end
