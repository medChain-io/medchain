class ApplicationController < ActionController::Base
  def homepage 
    render template: "/index.html.erb"
  end
end
