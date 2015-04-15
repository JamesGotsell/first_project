class Song < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :description, length: { maximum: 500,
      too_long:"%{count} characters is the maximum allowed" }

  mount_uploader :song, AudioUploader
  mount_uploader :song_picture, PictureUploader
end
