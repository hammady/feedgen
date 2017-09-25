class Item < ApplicationRecord
  belongs_to :feed_channel, foreign_key: 'channel_id'

  validates_presence_of :title, :author, :url, :pub_date

  before_create {|item|
    item.uuid = SecureRandom.hex(32)
  }
end
