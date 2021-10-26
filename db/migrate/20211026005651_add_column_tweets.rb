class AddColumnTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :start_time, :datetime
  end
end
