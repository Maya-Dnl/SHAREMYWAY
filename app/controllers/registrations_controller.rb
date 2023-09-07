class RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]

  protected

  def configure_account_update_params
    # Permettre la mise à jour du profil sans le mot de passe actuel
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :username, :language])
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
# , :hobby1, :hobby2, :hobby3
