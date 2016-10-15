class ResultController < ApplicationController
	def index
		@results=Result.all
	end

	def new
	 	@result = Result.new
	 	
	end

	def result_params
      params.require(:result).permit(:marks, :student_id, :exam_id)
   	end

	def create
		 @result = Result.new(result_params)
	
   	 @result.save
      redirect_to :action => 'index'		
	end

	def edit
		@result = Result.find(params[:id])      
	end

	def show
		@result = Result.find(params[:id])
	end

	def update
		@result = Result.find(params[:id])
      
      @result.update_attributes(result_params)
         redirect_to :action => 'show', :id => @result
    end

	def delete
		 Result.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
end
