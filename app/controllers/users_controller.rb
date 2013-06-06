class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]
  before_filter :correct_user, :only => [:edit, :update]

  def show
    @user = User.find(params[:id])
    @page_title = @user.name
  end

  def new
    @user = User.new
    @page_title = t('signup.title')
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # tab
      sign_in @user
      flash[:success] = "Welcome to Your Profile Page!"
      redirect_to @user
    else
      @page_title = t('signup.title')
      render 'new'
    end
  end

  def edit
    @page_title = t('settings.title')
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = t('settings.update')
      redirect_to @user
    else
      @page_title = t('settings.title')
      render 'edit'
    end
  end

  private

  def authenticate
    deny_access unless signed_in?
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end
end
