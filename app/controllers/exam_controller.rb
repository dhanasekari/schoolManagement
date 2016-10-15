class ExamController < ApplicationController
	def index
		@exams=Exam.all
	end

	def new
	 	@exam = Exam.new
	 	
	end

	def exam_params
      params.require(:exam).permit(:ExamName, :student_id, :subject_id)
   	end

	def create
		 @exam = Exam.new(exam_params)
	
   	 @exam.save
      redirect_to :action => 'index'		
	end

	def edit
		@exam = Exam.find(params[:id])      
	end

	def show
		@exam = Exam.find(params[:id])
	end

	def update
		@exam = Exam.find(params[:id])
      
      @exam.update_attributes(exam_params)
         redirect_to :action => 'show', :id => @exam
    end

	def delete
		 Exam.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
	
end
