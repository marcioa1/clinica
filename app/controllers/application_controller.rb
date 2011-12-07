class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :retrieve_client

  
  def retrieve_client
    @client = Client.find(current_user.client_id)
  end
end
