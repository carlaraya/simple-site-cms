class ApplicationController < ActionController::Base
  before_action :get_sitevars
  def get_sitevars
    @sitevars = SiteVar.first
  end
end
