class ArticlesController < ApplicationController
	def new
		@article = Article.new(user: User.last)
	end

	def create
		@article = Article.new(article_params)
		@article.user = User.last # cheating - no login model yet
		if @article.save
			redirect_to(root_path, notice: "Successfully saved.")
		else
			flash.alert = @article.errors.inspect
			render 'new'
		end
	end

	def index
		@articles = Article.all.reverse

		respond_to do |format|
			format.html
			format.rss { render layout: false}
		end
	end

	def show
	end

	def article_params
       params.require(:article).permit(:title, :text, :user)
    end
end
