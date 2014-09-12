class Staff < ActiveRecord::Base
  attr_accessible :active, :bio, :first_name, :last_name, :title, :order, :remove_photo, :photo, :photo_cache

  mount_uploader :photo, StaffPhotoUploader

  default_scope order('order ASC')

  scope :active, where(active: true)
end
