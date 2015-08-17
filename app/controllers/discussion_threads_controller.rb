class DiscussionThreadsController < ApplicationController
	layout "rpg"
	def index
		# presently hardwired to support one and only one thread
  		@discussion_thread = DiscussionThread.first
  end

	def scrap
		Scrap.create(note: params[:user] + ": " + params[:instructions])
		flash[:notice] = "Your message has been sent to the Dungeon Master!"
		redirect_to discussion_threads_url
	end
end
