class ConvertPubDateToDateTime < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :pub_date, :datetime
  end
end
