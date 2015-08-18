class ScrapsController < ApplicationController
	def index
		@scraps = Scrap.all.order(created_at: :desc)
		respond_to do |format|
			format.html
			format.rss { render layout: false}
		end
	end
end
