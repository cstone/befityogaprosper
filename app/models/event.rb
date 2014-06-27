class Event < ActiveRecord::Base
  belongs_to :event_category
  attr_accessible :address, :city, :description, :state, :time, :title, :url, :venue, :zip
end
