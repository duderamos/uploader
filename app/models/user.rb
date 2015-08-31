class User < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  mount_uploader :picture, PictureUploader
end
