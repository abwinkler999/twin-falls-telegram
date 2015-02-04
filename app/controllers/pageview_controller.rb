class PageviewController < ApplicationController
	def index
		@pageviews = Pageview.all.order(created_at: :desc)
		respond_to do |format|
			format.html
			format.rss { render layout: false}
		end
	end
end
