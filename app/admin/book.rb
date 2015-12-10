ActiveAdmin.register Book do

  menu priority: 4

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

  filter :name
  filter :author, :as => :check_boxes
  filter :genre, :as => :check_boxes
  filter :price

  index do
    # Columns displayed
    column :name
    column :author
    column :genre
    column :price do |product|
      number_to_currency product.price
    end
    actions
  end

end
