module V1
  class UsersController < ApplicationController
    load_and_authorize_resource
  
    def index
    end
  
    def show
    end
  
    def new
    end
  
    def create    
      respond_to do |format|
        if @user.save
          format.html
          format.json { render json: @user }
        else
          format.html
          format.json
        end
      end
    end
  
    def edit
    end
  
    def update
      respond_to do |format|
        if @user.update_attributes(user_params)
          format.html
          format.json { render json: @user }
        else
          format.html
          format.json
        end
      end
    end
  
    def destroy
      @user.destroy
      respond_to do |format|
        format.html {redirect_to users_path }
        format.json
      end
    end
  
  
    private
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :about)
    end
  
  end
end