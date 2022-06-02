class ApplicationController < ActionController::Base
  def homepage 
    render template: "/index.html.erb"
  end

  def profile
    if MedwalletAccount.find_by(id: params[:id]) != nil
      @user = MedwalletAccount.find_by!(id: params[:id])
      render template: "profiles/home.html.erb"
    else
      redirect_to "/", alert: "You can only access your profile page!"
    end

  end
end
