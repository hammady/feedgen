class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.string :title
      t.string :subtitle
      t.string :url
      t.string :enclosures_url
      t.string :language
      t.string :copyright
      t.string :author
      t.string :description
      t.string :owner_name
      t.string :owner_email
      t.string :image_url
      t.string :categories
      t.boolean :explicit
      t.string :keywords
      t.timestamps
    end
  end
end
