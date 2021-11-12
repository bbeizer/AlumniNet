class AlumniController < ApplicationController

    def new
        @alumni = Alumni.new
    end

    def create
        @alumni = Alumnit.new(params[:alumni])
    end

    def show
        @alumni = Alumni.find(params[:id])
    end
end

