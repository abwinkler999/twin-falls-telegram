class PersonalsController < ApplicationController
  def delete
  	#@personal = Personal.find(params[:id])
  	redirect_to(root_path, notice: params.inspect)

  end
end
