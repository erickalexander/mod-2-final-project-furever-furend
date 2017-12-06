class DogsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    if logged_in?
      @dogs = current_user.dogs
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
