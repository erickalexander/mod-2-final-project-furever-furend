class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      session[:user_id] = @user.id
    else
      render 'new'
    end
    # byebug
    redirect_to edit_user_path(@user)
  end


  def show
    @user = User.find(params[:id])
  end

  def dogs
    @user = User.find(params[:id])
    if !@user[:job_id].nil?
      #later will be sessions
     @filtered = @user.get_list_of_dogs
    end
  end

  def assign_dogs
    @user = User.find(params[:id])
    byebug
    @user.dogs << params[:dogs]
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # byebug
    @user = User.find(params[:id])
      if !@user.job_id && !@user.home_id
        @job = Job.create(params[:user][:job])
        @user.job_id = @job.id
      else
        @job = Job.find(@user.job_id)
        @job.update(salary: params[:user][:job][:salary], num_hours_at_work: params[:user][:job][:num_hours_at_work])
      end
      if !@user.home_id
        @home =
      redirect_to user_dogs_path(@user)
      end

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :job_id, :home_id)
  end

end
