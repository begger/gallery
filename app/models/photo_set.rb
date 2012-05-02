class PhotoSet < ActiveRecord::Base
  has_many :photos

  validates :name, :presence => true
  validates :description, :presence => true
end
