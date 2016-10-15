class AttendanceController < ApplicationController
	def index
		@attendances=Attendance.all
	end

	def new
	 	@attendance = Attendance.new
	 	@student =Student.all
	 	end

	def attendance_params
      params.require(:attendance).permit(:day, :status, :student_id)
   	end

	def create
		 @attendance = Attendance.new(attendance_params)
	
   	 @attendance.save
      redirect_to :action => 'index'
   	 		
	end

	def edit
		@attendance = Attendance.find(params[:id])
     
	end

	def show
		@attendance = Attendance.find(params[:id])
	end

	def update
		@attendance = Attendance.find(params[:id])
      
      	@attendance.update_attributes(attendance_params)
         redirect_to :action => 'show', :id => @attendance
     
	end

	def delete
		 Attendance.find(params[:id]).destroy
      redirect_to :action => 'index'
	end 

	def student_attendance
		@student = Student.find(params[:id])
		@attend= Attendance.where("student_id=#{@student.id}")

	end	 
end
