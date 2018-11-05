Spree::UserRegistrationsController.class_eval do
  def create
    build_resource(spree_user_params)
    if resource.save
      UserMailer.welcome_email(@spree_user).deliver_now
      set_flash_message(:notice, :signed_up)
      sign_in(:spree_user, resource)
      session[:spree_user_signup] = true
      respond_with resource, location: after_sign_up_path_for(resource)
    else
      clean_up_passwords(resource)
      respond_with(resource) do |format|
        format.html { render :new }
      end
    end
  end
end


