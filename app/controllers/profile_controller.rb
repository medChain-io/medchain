class ProfileController < ApplicationController
  def profile
    @user = current_medwallet_account
    render template: "/profiles/home.html.erb"
  end
end