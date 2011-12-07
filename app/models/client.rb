class Client < ActiveRecord::Base
  
  has_one :user
  
  validates_presence_of :name, :email
  
  def create_user
    User.create(:email => self.email, :password =>"123456", 
                :password_confirmation=>"123456", :client_id => self.id)
  end
  
end
