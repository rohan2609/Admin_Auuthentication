class RegistrationsController < ApplicationController
  def create
    super
    @user.create_general_setting
  end

  private

  def sign_up_params
    params.require(:user).permit!
  end

  def account_update_params
    params.require(:user).permit!
  end
end
