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
def destroy
	@request=Request.find_by_id(params[:id])
	flash[:alert] = 'not deleted!'
	if @request.delete
		flash[:alert] = 'Deleted'
	end		
	@request=Request.all
	redirect_to root_path
end
def edit
	@request= Request.find_by id:params[:id]
end
def update
@request = Request.find_by_id(params[:id])
	if @request.update_attributes(add_params)
		flash[:notice] = 'Your Details Successfully Updated!'
		redirect_to root_path
	else
		flash[:error] = 'Sorry Updation is Failed!'
		render :update
	end

end
def add_params
	params.require(:request).permit(:name, :bg, :address, :mobile, :mid, :hname, :hcity, :image)
end

end
