class Restaurant < ActiveRecord::Base
  has_many :menu_offering , :class_name => "MenuItem", :foreign_key => "restaurant_id"
end
