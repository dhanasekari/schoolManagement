class StandardController < ApplicationController
	def index
		@standards=Standard.all
	end

	def new
	 	@standard = Standard.new
	 	
	end

	def standard_params
      params.require(:standard).permit(:description)
   	end

	def create
		 @standard = Standard.new(standard_params)
	
   	 @standard.save
      redirect_to :action => 'index'		
	end

	def edit
		@standard = Standard.find(params[:id])      
	end

	def show
		@standard = Standard.find(params[:id])
	end

	def update
		@standard = Standard.find(params[:id])
      
      @standard.update_attributes(standard_params)
         redirect_to :action => 'show', :id => @standard
    end

	def delete
		 Standard.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
	 def show_standard
      @standard = Standard.find(params[:id])
   end
end
