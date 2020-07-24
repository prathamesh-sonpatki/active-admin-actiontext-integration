ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :body
  #
  # or
  #
  # permit_params do
  #   permitted = [:body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :body

  form do |f|
    f.inputs do
      f.text_area :body
      f.rich_text_area :body, label: 'body'
    end
    f.actions
  end
end
