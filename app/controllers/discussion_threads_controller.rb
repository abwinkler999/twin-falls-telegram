class DiscussionThreadsController < ApplicationController
	layout "rpg"
	def show
		# presently hardwired to support one and only one thread
  		@discussion_thread = DiscussionThread.first
  end
end
