class PersonalsController < ApplicationController

  def create
  	#@personal = Personal.find(params[:id])
  	#notice_text = @personal.body
  	#@personal.destroy
  	#redirect_to(root_path, notice: "Personal ad '#{notice_text}' deleted.")
  	@personal = Personal.new(body: params[:personal][:body], signed: params[:personal][:signed])
  	if @personal.save
  		redirect_to(root_path, notice: "Your personal ad has been created!")
  	else
  		generated_error_messages = ""
  		@personal.errors.full_messages.each { |msg| generated_error_messages << msg; generated_error_messages << "\n\r"}
		flash.alert = generated_error_messages
		redirect_to(root_path)
  	end
  end

  def destroy
  	binding.pry
  	@personal = Personal.find(params[:id])
  	notice_text = @personal.body
  	@personal.destroy
  	redirect_to(root_path, notice: "Personal ad '#{notice_text}' deleted.")
  end

  def show
  	#binding.pry
  end


def article_params
   params.require(:article).permit(:body, :signed)
end

end
