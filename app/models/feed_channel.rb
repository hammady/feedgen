class FeedChannel < ApplicationRecord
  self.table_name = 'channels'

  has_many :items

  validates_presence_of :title, :author, :description

  def to_s
    "#{title} - #{subtitle}, #{author}"
  end

  def publish
    # publish to S3
    body = FeedChannelsController.render "show.rss", layout: false, assigns: {ch: self}
    obj = S3_BUCKET.object(published_filename)
    obj.put(body: body)
  end

  def published_filename
    "#{id}.rss"
  end

  def published_url
    "https://#{ENV['CLOUDFRONT_DOMAIN']}/#{published_filename}"
  end

end
