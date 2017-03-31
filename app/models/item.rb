class Item < ApplicationRecord
  belongs_to :channel

  validates_presence_of :title, :author, :url, :pub_date

  before_create {|item|
    item.uuid = SecureRandom.hex(32)
  }
end
