class TablePrice < ActiveRecord::Base
  belongs_to :client
  has_many :table_items
  
  scope :active, where("active = ?",true)
  scope :from_client, lambda {|client_id| where("client_id = ? ", client_id)}
end
