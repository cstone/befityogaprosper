class Staff < ActiveRecord::Base
  attr_accessible :active, :bio, :name, :photo

  mount_uploader :photo, StaffPhotoUploader

  default_scope where(active: true)

end
