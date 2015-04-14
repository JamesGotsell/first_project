class Comment < ActiveRecord::Base
  belongs_to :song 
  has_and_belongs_to_many :users

  validates :content, length: { maximum: 500,
      too_long:"%{count} characters is the maximum allowed" }

end
