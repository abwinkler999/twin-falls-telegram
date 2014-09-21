class ArticlesController < ApplicationController
	def new
	end

	def index
		@articles = Article.all

		respond_to do |format|
			format.html
			format.rss { render layout: false }
		end
	end
end
