class Article < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :text, :user_id
end
