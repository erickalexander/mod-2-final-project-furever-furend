class DogsController < ApplicationController
  skip_before_action :authorized, only: [:index]


  def show
    @dog = Dog.find(params[:id])
  end
end
