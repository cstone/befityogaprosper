class Page < ActiveRecord::Base
  attr_accessible :content, :page_image, :permalink, :title

  mount_uploader :page_image, PageImageUploader
end
