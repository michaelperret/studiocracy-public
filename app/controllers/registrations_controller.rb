class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:image, :first_name, :last_name, :city, :state, :zip_code, :bio, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:image, :first_name, :last_name, :city, :state, :zip_code, :bio, :email, :password, :password_confirmation, :current_password)
  end
end