class UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :new, :create]

  def index
    @user = User.new
  end

  def new
    # byebug
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user)
    else
      flash[:success] = "Password must be a minimum of 6 characters"
      render 'new'
    end
    # byebug
  end


  def show
    @user = User.find(params[:id])
  end

  def dogs
    @user = User.find(params[:id])
    if !@user[:job_id].nil?
      # byebug
      #later will be sessions
     @filtered = @user.get_list_of_dogs
    end
  end

  def assign_dogs
    # byebug
    @user = User.find(params[:id])
    # byebug
    params[:user][:dogs].select{|x| !x.empty?}.each do |dog_id|
      if !@user.dogs.include?(Dog.find(dog_id.to_i))
        @user.dogs << Dog.find(dog_id.to_i)
      end
    end
    redirect_to user_path(@user)
  end

  def edit
    # byebug
    @user = User.find(params[:id])
  end

  def update
    # byebug
    @user = User.find(params[:id])

      if @user.job_id.nil?
        @job = Job.create(salary: params[:user][:job][:salary], num_hours_at_work: params[:user][:job][:num_hours_at_work])
        @user.job_id = @job.id
        @user.save
      else
        # byebug
        @job = Job.find(@user.job_id)
        @job.update(salary: params[:user][:job][:salary], num_hours_at_work: params[:user][:job][:num_hours_at_work])
      end
      if  @user.home_id.nil? #WHY ADD USERID
        # byebug
        @home = Home.create(city_or_suburb: params[:user][:home][:city_or_suburb], apt_or_house: params[:user][:home][:apt_or_house], num_of_rooms: params[:user][:home][:num_of_rooms], num_of_occupants: params[:user][:home][:num_of_occupants], kids: params[:user][:home][:kids], pets: params[:user][:home][:pets], user_id: @user.id)
        @user.home_id = @home.id
        @user.save
      else
        @home = Home.find(@user.home_id)
        @home.update(city_or_suburb: params[:user][:home][:city_or_suburb], apt_or_house: params[:user][:home][:apt_or_house], num_of_rooms: params[:user][:home][:num_of_rooms], num_of_occupants: params[:user][:home][:num_of_occupants], kids: params[:user][:home][:kids], pets: params[:user][:home][:pets], user_id: @user.id)
      end
      redirect_to user_dogs_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :job_id, :home_id)
  end

end
