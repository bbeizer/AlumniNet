class StudentController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            flash[:success] = "Welcome to the Sample App!"
            redirect_to @student
        else
            render 'new'
        end
    end

    def show
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:name, :email, :interests, :school, :major)
    end
    
end
