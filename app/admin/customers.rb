ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password, :full_name, :billing_address, :default_shipping_address, :province, :phone
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :password, :full_name, :billing_address, :default_shipping_address, :province, :phone]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
