class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.text :summary
      t.string :image_url
      t.string :url
      t.integer :file_size
      t.string :uuid
      t.date :pub_date
      t.integer :duration
      t.string :keywords
      t.integer :channel_id 
      t.timestamps
    end
  end
end
