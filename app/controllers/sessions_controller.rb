class SessionsController < ApplicationController
    before_action :logged_in_already, only: [:new, :create]
    def show
    end

    def new

    end
    def create
        user = User.find_by(Username: params[:session][:Username])
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = "You have successfully logged in"
          redirect_to root_path
        else
          flash.now[:error] = "There was something wrong with your login information"
          render 'new'
        end
      end

    def destroy
        session[:user_id]=nil
        flash[:success]="successfully loged out"
        redirect_to login_path
    end
    private
  
    def logged_in_already
        if logged_in?
          flash[:error] = "You are already logged in"
          redirect_to root_path
        end
      end
end
