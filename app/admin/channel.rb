ActiveAdmin.register Channel do

  permit_params :title, :subtitle, :url, :enclosures_url, :language,
    :copyright, :author, :description, :owner_name, :owner_email,
    :image_url, :categories, :explicit, :keywords

end
