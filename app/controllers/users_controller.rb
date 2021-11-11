class UsersController < ApplicationController

    def new 
        @user = U.new
        puts @user.username
    end

    def create
        @user = U.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/welcome'
        else
            render 'new'
        end
    end

    def show
        @user = U.find(params[:id])
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
