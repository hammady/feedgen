ActiveAdmin.register Channel do

  permit_params :title, :subtitle, :url, :enclosures_url, :language,
    :copyright, :author, :description, :owner_name, :owner_email,
    :image_url, :categories, :explicit, :keywords, :itunes_link

  action_item(:publish, only: [:show]) do 
    button_to "Publish updates", publish_admin_channel_path(Channel.find params[:id]), :method => :put
  end

  member_action :publish, :method => :put do
    channel = Channel.find params[:id]
    channel.publish
    redirect_to admin_channel_path(channel), notice:
      "Channel published successfully to #{channel.published_url}"
  end

end
