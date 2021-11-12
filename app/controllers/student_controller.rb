class StudentController < ApplicationController

    #creates a new student
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(params[:student])
    end

    def show
        @student = Student.find(params[:id])
    end





end
