class Photo < ActiveRecord::Base
  belongs_to :photo_set

  validates :name, :presence => true
  validates :description, :presence => true
  validates :photo_set, :presence => true
  validates :image, :presence => true

  mount_uploader :image, PhotoUploader
end
