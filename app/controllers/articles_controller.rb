class ArticlesController < ApplicationController
	def new
		unless actor_is_editor
			redirect_to(root_path, notice: "Only editors can create articles!")
		end
		@article = Article.new(user: User.last)
		@tags = Tag.all
	end

	def create
		binding.pry
		@article = Article.new(article_params)
		binding.pry
		@article.user = current_user
		if @article.save
			redirect_to(root_path, notice: "Successfully saved.")
		else
			generated_error_messages = ""
			@article.errors.full_messages.each { |msg| generated_error_messages << msg; generated_error_messages << "\n\r"}
			flash.alert = generated_error_messages
			render 'new'
		end
	end

	def edit
		unless actor_is_editor
			redirect_to(root_path, notice: "Only editors can edit articles!")
		end
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all.order(created_at: :desc)

		respond_to do |format|
			format.html
			format.rss { render layout: false}
		end
	end

	def show
		@article = params[:id]
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to articles_path
		else
			generated_error_messages = ""
			@article.errors.full_messages.each { |msg| generated_error_messages << msg; generated_error_messages << "\n\r"}
			flash.alert = generated_error_messages
			render 'edit'
		end
	end

	def article_params
       params.require(:article).permit(:title, :text, :user, {tags: []})
    end

    def actor_is_editor
		return user_signed_in? && current_user.editor?
	end
end
