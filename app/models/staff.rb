class Staff < ActiveRecord::Base
  attr_accessible :active, :bio, :name, :photo

  mount_uploader :photo, StaffPhotoUploader

  default_scope order('last_name ASC' && 'order ASC')

end
