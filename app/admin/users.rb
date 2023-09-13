ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :user_email, :password, :phone_number, :address, :pin_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :user_email, :password, :phone_number, :address, :pin_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  config.clear_action_items!
  index do
    selectable_column
    id_column
    column :user_email
    column :name
    column :created_at
    actions
  end

  filter :user_email
  filter :name
  filter :created_at

  form do |f|
    f.inputs 'User Details' do
      f.input :user_email
      f.input :name
    end
    f.actions
  end
  
end
