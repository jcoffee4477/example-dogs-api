class DogsController < ApplicationController
  def index
    @dogs = Dog.all 
    render :index
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render :show
  end

  def create
    if current_user
    @dog = Dog.new(name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    @dog.save
  else
    render json: {message: "need to be logged in to create dog"}
  end
  
    
  end
end
