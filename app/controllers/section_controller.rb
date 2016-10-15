class SectionController < ApplicationController
	def index
		@sections=Section.all
	end

	def new
	 	@section = Section.new
	 	
	end

	def section_params
      params.require(:section).permit(:sectionName)
   	end

	def create
		 @section = Section.new(section_params)
	
   	 @section.save
      redirect_to :action => 'index'		
	end

	def edit
		@section = Section.find(params[:id])      
	end

	def show
		@section = Section.find(params[:id])
	end

	def update
		@section = Section.find(params[:id])
      
      @section.update_attributes(section_params)
         redirect_to :action => 'show', :id => @section
    end

	def delete
		 Section.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 
	 def show_standard
      @section = Section.find(params[:id])
   end
end
