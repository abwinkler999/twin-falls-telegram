class DiscussionThread < ActiveRecord::Base
  has_many :posts
end
