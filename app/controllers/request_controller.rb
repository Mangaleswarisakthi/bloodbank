class RequestController < ApplicationController
  def new
	@request=Request.new
  end
def create
	@request=Request.new(add_params)
	if @request.save
		flash[:notice] = 'Your Request  Successfully Added!'
		redirect_to root_path
	else
		flash[:notice] = 'Your Request Is not Added'
		render :new
	end
end
def delete
end
def update
end
def add_params
	params.require(:request).permit(:name, :bg, :address, :mobile, :mid, :hname, :hcity, :image)
end

end
