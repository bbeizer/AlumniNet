class EnrollmentsController < ApplicationController
    before_action :set_enrollment, only: %i[ show edit update destroy ]

    def index
      @courses = current_user.courses
    end
  
 
    def create
      @course = Course.find_by(id: params[:course_id]) 
      @enrollment = Enrollment.new(u_id: current_user.id, course_id: @course.id)
      if @enrollment.save
        redirect_to enrollments_path
      end
    end
  
   
    def destroy
      @enrollment.destroy

    end
  
    private
      
      def set_enrollment
        @enrollment = Enrollment.find(params[:id])
      end
  
  
  end