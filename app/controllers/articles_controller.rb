class ArticlesController < ApplicationController
	def new
		unless actor_is_editor
			redirect_to(root_path, notice: "Only editors can create articles!")
		end
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

	def edit
		unless actor_is_editor
			redirect_to(root_path, notice: "Only editors can edit articles!")
		end
	end

	def index
		@articles = Article.all.order(created_at: desc)

		respond_to do |format|
			format.html
			format.rss { render layout: false}
		end
	end

	def show
		@article = params[:id]
	end

	def article_params
       params.require(:article).permit(:title, :text, :user)
    end

    def actor_is_editor
		return user_signed_in? && current_user.editor?
	end
end
