class StudentController < ApplicationController

	def index
		@students=Student.all
		
	end

	def new
	 	@student = Student.new
	 	@section = Section.all
	end

	def student_params
      params.require(:student).permit(:fname, :lname,:section_id, :dob, :address)
   	end

	def create
		 @student = Student.new(student_params)
	
   	if @student.save
      redirect_to :action => 'index'
  	else
  	 @section = Section.all
      render :action => 'new'
   	end  
		
	end

	def edit
		@student = Student.find(params[:id])
    @section = Section.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
      
      if @student.update_attributes(student_params)
         redirect_to :action => 'show', :id => @student
      else
  	 	@section = Section.all
      	render :action => 'new'
      end
	end

	def delete
		 Student.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
    
end
