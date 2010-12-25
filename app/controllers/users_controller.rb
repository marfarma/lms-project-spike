class UsersController < ApplicationController
    before_filter :find_user, :only => [:show, :edit, :update, :destroy]
    
  def show
    @user = User.find(params[:id])
    @title = User.name
  end
  
  def new
    @title = "Sign Up"
  end

  protected    
    def find_user
      @user = User.find(params[:id])
    end
end
