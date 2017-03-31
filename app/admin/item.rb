ActiveAdmin.register Item do

  permit_params :title, :subtitle, :author, :summary,
    :image_url, :url, :file_size, :uuid, :pub_date,
    :duration, :keywords, :channel_id

end
