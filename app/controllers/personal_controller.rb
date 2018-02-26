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
	@personal.build_bdetail
	
  end
def create
	@personal = Personal.new(add_params)

	if((params[:check_value] == "1") || (params[:check_value] == "2") || (params[:check_value] == "3"))
		flash[:notice] = 'You are not elegible!'
		redirect_to "/personal/new"
	else 
		if @personal.save
			flash[:notice] = 'Your Details Successfully Added!'
			redirect_to "/personal/new"	
		else
			render :new
		end
	end
end
def edit
	@personal = Personal.find_by id:params[:id]
end
def delete
	@personal=Personal.find_by_id(params[:id])
	flash[:alert] = 'not deleted!'
	if @personal.destroy
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
	params.require(:personal).permit(:name, :db, :gender, :mobile, :mid, :address, :city, :image, bdetail_attributes: [:bid, :bg, :age, :wait, :hemo, :ldate])
end

end
