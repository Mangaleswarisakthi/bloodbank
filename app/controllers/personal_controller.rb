class PersonalController < ApplicationController
before_action :is_admin?, only: [:destroy]
  def index
	@personal=Personal.all
@bdetail=Bdetail.all
	@request=Request.all
  end

  def show
	@personal=Personal.all
	@bdetail=Bdetail.all
	@request=Request.all
  end

  def new
	@personal=Personal.new
  end
def create
	@personal = Personal.new(add_params)
	if @personal.save
		flash[:notice] = 'Your Details Successfully Added!'
		redirect_to "/personal/#{@personal.id}/bdetail/new" 
	else
		flash[:notice] = 'Details Not saved'
		render :new
	end

end
def edit
	@personal = Personal.find_by id:params[:id]
end
def delete
	@personal=Personal.find(params[:id])
	flash[:alert] = 'not deleted!'
	if @personal.delete
		flash[:alert] = 'Deleted'
	end		
	
	@personal=Personal.all
	render:index
	
end

  def update
	@personal = Personal.find_by id:params[:id]
	if @personal.update_attributes(add_params)
		flash[:notice] = 'Your Details Successfully Updated!'
		redirect_to root_path
	else
		flash[:error] = 'Sorry Updation is Failed!'
		render :update
	end
  end

  def destroy
  end
def is_admin?
	redirect_to root_path unless current_user.admin
end
def add_params
	params.require(:personal).permit(:name, :db, :gender, :mobile, :mid, :address, :city, :image)
end

end
