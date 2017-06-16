class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def restaurant_params
    params.required(:restaurant).permit(:name, :url)
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Restaurant Saved!"
      redirect_back restaurant_path
    else
      render 'restaurant/show'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant Updated!"
      redirect_to @restaurant
    else
      redirect_back_or_to @restaurant
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:alert] = "Restaurant Deleted!"
    redirect_to '/restaurants'

end
