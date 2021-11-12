class AlumniController < ApplicationController

    def new
        @alumni = Alumni.new
    end

    def create
        @alumni = Alumni.new(alum_params)
    end

    def show
        @alumni = Alumni.find(params[:id])
    end

    def alum_params
        params.require(:alumni).permit(:name, :email, :interests, :school, :major)
    end

end

