class SubjectController < ApplicationController
	def index
		@subjects=Subject.all
	end

	def new
	 	@subject = Subject.new
	 	
	end

	def subject_params
      params.require(:subject).permit(:SubjectName)
   	end

	def create
		 @subject = Subject.new(subject_params)
	
   	 @subject.save
      redirect_to :action => 'index'		
	end

	def edit
		@subject = Subject.find(params[:id])      
	end

	def show
		@subject = Subject.find(params[:id])
	end

	def update
		@subject = Subject.find(params[:id])
      
      @subject.update_attributes(subject_params)
         redirect_to :action => 'show', :id => @subject
    end

	def delete
		 Subject.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
	 def show_standard
      @subject = Subject.find(params[:id])
   end

end
