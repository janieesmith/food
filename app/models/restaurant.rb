class Restaurant < ActiveRecord::Base
  has_many :menu_offering , :class_name => "MenuItem", :foreign_key => "restaurant_id"

  validates :restaurant_name, :presence => true, :uniqueness => true
  validates :email_address, :presence => true
  validates :restaurant_name, :uniqueness => true

  mount_uploader :logo, LogoUploader

end
