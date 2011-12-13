class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!
  
  def retrieve_client
    @client = Client.find(current_user.client_id) if current_user
  end
end
