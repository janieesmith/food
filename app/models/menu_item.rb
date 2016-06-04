class MenuItem < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, :presence => true

  mount_uploader :photo, PhotoUploader

end
