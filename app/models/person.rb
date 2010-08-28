class Person < ActiveRecord::Base
  has_many :pictures
  validates_presence_of :first_name, :last_name
  
  def name
    "#{first_name} #{last_name}"
  end
end
