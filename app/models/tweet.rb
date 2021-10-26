class Tweet < ApplicationRecord
  def self.tweet_count(date)
    self.where(start_time: date)
  end
end
