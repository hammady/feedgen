class AddiTunesLinkToChannel < ActiveRecord::Migration[5.0]
  def change
    add_column :channels, :itunes_link, :string
  end
end
