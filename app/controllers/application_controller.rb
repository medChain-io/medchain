class ApplicationController < ActionController::Base
  def homepage 
    render template: "/index.html.erb"
  end

  def profile
    @user = current_medwallet_account
    render template: "profiles/home.html.erb"
  end
end
