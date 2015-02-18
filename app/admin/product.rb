ActiveAdmin.register Product do
  permit_params :title, :description, :link, :inventory, :prices, :details, :slug, :show, :image_url

  hstore_editor
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :link
      f.input :prices, as: :hstore
      f.input :details, as: :hstore
      f.input :show
      f.input :image_url
      f.input :inventory
    end

    f.actions
  end
end
