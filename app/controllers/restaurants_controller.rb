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

  def create
    @restaurant = Restaurant.new
    @restaurant.email_address = params[:email_address]
    @restaurant.logo = params[:logo]
    @restaurant.phone_number = params[:phone_number]
    @restaurant.address = params[:address]
    @restaurant.sponsor_name = params[:sponsor_name]
    @restaurant.restaurant_name = params[:restaurant_name]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.email_address = params[:email_address]
    @restaurant.logo = params[:logo]
    @restaurant.phone_number = params[:phone_number]
    @restaurant.address = params[:address]
    @restaurant.sponsor_name = params[:sponsor_name]
    @restaurant.restaurant_name = params[:restaurant_name]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    redirect_to "/restaurants", :notice => "Restaurant deleted."
  end
end
