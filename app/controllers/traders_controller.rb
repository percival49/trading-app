class TradersController < ApplicationController
    before_action :authenticate_user!

    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

      if @user.update(user_params)
        redirect_to user_path
      else
        render :edit
      end
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      @user.user_type = 'trader'
      if @user.save!

        redirect_to root_path
      else
        render admin_new_path
      end
    end

    private
    def user_params
        params.require(:user).permit(:email, :id)
    end
end
