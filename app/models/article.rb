class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :game
	validates_presence_of :title, :text, :user_id
	has_and_belongs_to_many :tags
end
