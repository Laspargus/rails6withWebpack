class UsersController < ApplicationController
  before_action:set_user
  
  def index
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_user
    @user = User.find(params[:id])
  end
end
