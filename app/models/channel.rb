class Channel < ApplicationRecord
  has_many :items

  validates_presence_of :title, :author, :description

  def to_s
    "#{title} - #{subtitle}, #{author}"
  end

end
