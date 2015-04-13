class Comment < ActiveRecord::Base

    belongs_to :song 
    has_and_belongs_to_many :users
end
