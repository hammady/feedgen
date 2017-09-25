ActiveAdmin.register FeedChannel do

  permit_params :title, :subtitle, :url, :enclosures_url, :language,
    :copyright, :author, :description, :owner_name, :owner_email,
    :image_url, :categories, :explicit, :keywords, :itunes_link

  action_item(:publish, only: [:show]) do 
    button_to "Publish updates", publish_admin_feed_channel_path(FeedChannel.find params[:id]), :method => :put
  end

  member_action :publish, :method => :put do
    channel = FeedChannel.find params[:id]
    channel.publish
    redirect_to admin_feed_channel_path(channel), notice:
      "Channel published successfully to #{channel.published_url}"
  end

end
