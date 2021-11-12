class UsersController < ApplicationController

    def new 
        @user = User.new
        puts @user.username
    end


    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/welcome'
        else
            render 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end


    private

    def user_params
        params.require(:user).permit(:username,:password,:name ,:interests,:email,:gradyear,:major)
    end
end
