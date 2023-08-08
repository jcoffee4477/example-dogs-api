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
    @dog = Dog.new(name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    @dog.save
    render :show
  end
end
