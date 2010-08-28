class Picture < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :image, :mime_type
end
