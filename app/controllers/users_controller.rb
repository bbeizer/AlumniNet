class UsersController < ApplicationController

    def index
      @users = User.all - [current_user]
    end

    def new 
        @user = User.new
    end

    def alumni
      @alumni = User.where("gradyear < ?", "2022")
    end

    def student
      @student = User.where("gradyear > ?", "2021")
    end

    def create
        @user = User.new(user_params)
        if @user.save
          reset_session
          log_in @user
          flash[:success] = "Welcome to AlumniNet!"
          redirect_to '/'
        else
          render 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def search_name
      @users = User.where("name LIKE ?", "%" + params[:q] + "%")
    end

    def search_major
      @users = User.where("major LIKE ?", "%" + params[:q] + "%")
    end

    def search_interest
      @users = User.where("interests LIKE ?", "%" + params[:q] + "%")
    end

    private

    def user_params
        params.require(:user).permit(:username,:password,:name ,:interests,:email,:gradyear,:major)
    end

end
