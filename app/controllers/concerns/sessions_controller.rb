class SessionsController < ApplicationController

    def new
    end

    def create
      byebug
        @user = User.find(params[:id])
        
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id.to_s
            session[:user_id] = @user.id
            render json: @users
        else
            render json: { errors: @user.errors.full_messages }, status: :wrong_login
        end
    end

    def delete
        session.delete(:user_id)
    end

end
