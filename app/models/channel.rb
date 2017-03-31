class Channel < ApplicationRecord
  has_many :items

  validates_presence_of :title, :author, :description

  def to_s
    "#{title} - #{subtitle}, #{author}"
  end

  def publish
    # publish to S3
    filename = "#{id}.rss"
    body = ChannelsController.render "show.rss", layout: false, assigns: {ch: self}
    obj = S3_BUCKET.object(filename)
    obj.put(body: body)
  end

end
