class RestaurantController < ApplicationController
  def show
    @ratings = (Rate.all).reverse
  end

  def show_average_rating
    @ratings = Rate.all
    @average = {}

    @ratings.each do |r|
      @average[r.restaurant] = {total_rating: 0, food_rating: 0, service_rating: 0, count: 0} if @average[r.restaurant].nil?

      @average[r.restaurant][:total_rating] += r.rating
      @average[r.restaurant][:food_rating] += r.food_rating
      @average[r.restaurant][:service_rating] += r.service_rating
      @average[r.restaurant][:count] += 1
    end
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      #log_in @restaurant
      flash[:success] = "New Restuarant Created!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :email, :password,
                                   :password_confirmation, 
                                   :cuisine_type, :payment_type, 
                                   :monday_hours, :tuesday_hours, 
                                   :wednesday_hours, :thursday_hours, 
                                   :friday_hours, :saturday_hours, 
                                   :sunday_hours, :parking, :latitude, 
                                   :longitude, :address, :city, :state, 
                                   :country, :fax, :zip, :smoking_area, 
                                   :alcohol, :dress_code, :accessibility, 
                                   :price, :url, :Rambience, :franchise, 
                                   :area, :other_services)
    end
end