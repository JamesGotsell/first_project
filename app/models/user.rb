class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :songs 
  has_and_belongs_to_many :comments

  validates :bio, length: { maximum: 500, 
  too_long:"%{count} characters is the maximum allowed" }

  mount_uploader :picture, PictureUploader
end
