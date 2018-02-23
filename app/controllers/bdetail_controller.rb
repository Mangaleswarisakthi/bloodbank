class BdetailController < ApplicationController
  def index
	@bdetail=Bdetail.all
  end

  def new
	@bdetail=Bdetail.new
  end

  def show
  end
def edit
	
end

  def update
	

  end
def create
	@bdetail = Bdetail.new(add_params)
	@flag = true
	if((params[:check_value] == "1") || (params[:check_value] == "2") || (params[:check_value] == "3"))
		@flag = true
		flash[:notice] = 'You are not elegible!'
		@personal=Personal.find_by_id(params[:bdetail][:bid])
		@personal.destroy
		redirect_to root_path
	else
		@flag = false
		if @bdetail.save
		flash[:notice] = 'Your Blood Details Successfully Added!'
		redirect_to root_path	
		else
		flash[:notice] = ' Blood Details Not saved'
		render :new
		end
		
		
	end

end


  def destroy
  end
def add_params
	params.require(:bdetail).permit(:bid, :bg, :age, :wait, :hemo, :ldate)
end
end
