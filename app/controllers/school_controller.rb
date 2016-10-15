class SchoolController < ApplicationController
	
	def index
		@schools=School.all
		#render json: { status: true ,
		#	data: { School: @schools }}
	end
	def show
		@school = School.find(params[:id])
		#render json: { status: true ,
		#	data: { School: @school }}
	end

	def show_standard
	 	@school = School.find(params[:id])
	 	@standard = @school.standards
   end

   def show_section
   	@standard = Standard.find(params[:id])
   	@section = @standard.sections
   end

   def student
   @section = Section.find(params[:id])
   @student = @section.students
   end

   def exam
   @student = Student.find(params[:id])
   @exam = @student.exams
   end
   def result
	@exam = Exam.find(params[:id])
	@result = @exam.results
   end

	def new
	 	@school = School.new
	 	@standard = Standard.all
	end

	def school_params
      params.require(:school).permit(:name, :address)
   	end

	def create
		 @school = School.new(school_params)
	
   	if @school.save
      #redirect_to :action => 'index'
      render json: {School: @school}
   	else
      @standard = Standard.all
      render :action => 'new'
   	end  
		
	end

	def edit
		@school = School.find(params[:id])
      @standard = Standard.all
	end

	

	def update
		@school = School.find(params[:id])
      
      if @school.update_attributes(school_params)
         redirect_to :action => 'show', :id => @school
      else
         @standard = Standard.all
         render :action => 'edit'
      end
	end

	def delete
		 School.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 

end
