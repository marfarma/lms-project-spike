class UsersController < ApplicationController
    before_filter :find_user, :only => [:show, :edit, :update, :destroy]
    
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user = User.new
    @title = "Sign Up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the prototype!"
      redirect_to @user
    else
      @title = "Sign Up"
      render 'new'
    end
  end

  protected    
    def find_user
      @user = User.find(params[:id])
    end
end
