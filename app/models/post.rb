class Post < ActiveRecord::Base
  belongs_to :discussion_thread
  belongs_to :user
end
