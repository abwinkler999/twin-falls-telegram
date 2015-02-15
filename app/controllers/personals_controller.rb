class PersonalsController < ApplicationController
  def destroy
  	@personal = Personal.find(params[:id])
  	notice_text = @personal.body
  	@personal.destroy
  	redirect_to(root_path, notice: "Personal ad '#{notice_text}' deleted.")
  end
end
