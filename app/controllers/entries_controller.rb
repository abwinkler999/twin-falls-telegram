class EntriesController < ApplicationController
	layout 'layouts/cyclopedia'
	def index
		@entries = Entry.all.order(name: :asc)

		respond_to do |format|
			format.html
			format.rss { render layout: false}
		end
	end
end
