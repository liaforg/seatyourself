class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    unless current_user
      flash[:alert] = ["Musy be logged in!"]
      redirect_to root_path
      return
    end

    @restaurant = Restaurant.find(params[:id])

    require_ownership_or_role
  end


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params, user: current_user)
    if @restaurant.save
      flash[:notice] = "Restaurant Saved!"
      redirect_to restaurants_path
    else
      flash.now[:error] = "Something went wrong, please try again!"
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant && @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant Updated!"
      redirect_to root_path
    else
      flash.now[:error] = @restaurant.errors.full_messages
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant && @restaurant.destroy
      flash[:alert] = "Restaurant Deleted!"
      redirect_to root_path
    else
    flash.now[:error] = @restaurant.errors.full_messages
    redirect_to '/restaurants'
    end
  end

  private

  def require_ownership_or_role
    unless User::ALLOWED_ROLES.include?(current_user.role)
      unless current_user.restaurants.include?(@restaurants)
        flash[:alert] = ["You are not authorized to view this page!"]
        redirect_to root_path
      end
    end
  end

end

def restaurant_params
  params.required(:restaurant).permit(:name, :address, :phone_number, :email, :capacity, :time_open, :cuisine, :url, :summary, :time_slot, :price, :time_close)
end
