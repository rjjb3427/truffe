class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @page_title = @user.name
  end

  def new
    @user = User.new
    @page_title = t('signup.title')
  end
end
