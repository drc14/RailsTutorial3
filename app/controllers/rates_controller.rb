class RatesController < ApplicationController
  def show
  end

  def new
  	@rate = Rate.new
  end

   def create
    @rate = Rate.new(rate_params.merge({user: current_user.name}))
    if @rate.save
      flash[:success] = "Rating added!"
      redirect_to current_user # Might work, might need to be in session controller to work
    else
      render 'new'
    end
  end

  private

    def rate_params
      params.require(:rate).permit(:user, :restaurant, :rating,
                                   :food_rating, :service_rating)
    end
end