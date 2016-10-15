class TeacherController < ApplicationController

	def index
		@teachers=Teacher.all
	end

	def new
	 	@teacher = Teacher.new
	 	@standard = Standard.all
	end

	def teacher_params
      params.require(:teacher).permit(:fname, :lname , :dob, :mobile, :standard_id,)
   	end

	def create
		 @teacher = Teacher.new(teacher_params)
	
   	if @teacher.save
      redirect_to :action => 'index'
  	else
  	 @standard = Standard.all
      render :action => 'new'
   	end  
		
	end

	def edit
		@teacher = Teacher.find(params[:id])
    @standard = Standard.all
	end

	def show
		@teacher = Teacher.find(params[:id])
	end

	def update
		@teacher = Teacher.find(params[:id])
      
      if @teacher.update_attributes(teacher_params)
         redirect_to :action => 'show', :id => @teacher
      else
  	 	@standard = Standard.all
      	render :action => 'new'
      end
	end

	def delete
		 Teacher.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
    
end
