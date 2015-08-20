class PostsController < ApplicationController

  def new
      unless actor_is_dm
        redirect_to(root_path, notice: "Only DMs can post at this time!")
      end
      @post = Post.new(user: current_user, discussion_thread: DiscussionThread.last)
  end

  def create
    @post = Post.new(post_params)
		@post.user = current_user
    @post.discussion_thread = DiscussionThread.last
		if @post.save
			redirect_to(discussion_threads_url, notice: "Successfully saved.")
		else
			generated_error_messages = ""
			@post.errors.full_messages.each { |msg| generated_error_messages << msg; generated_error_messages << "\n\r"}
			flash.alert = generated_error_messages
			render 'new'
		end
  end

  def edit
    unless actor_is_dm
      redirect_to(root_path, notice: "Only DMs can edit at this time!")
    end
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to discussion_threads_url
    else
      generated_error_messages = ""
      @post.errors.full_messages.each { |msg| generated_error_messages << msg; generated_error_messages << "\n\r"}
      flash.alert = generated_error_messages
      render 'edit'
    end
  end

  def actor_is_dm
		return user_signed_in? && current_user.is_a_dm?
	end

  def post_params
     params.require(:post).permit(:name, :text, :discussion_thread, :user)
  end
end
