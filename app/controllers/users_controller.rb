class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @ratings = Rate.where(user: @user.name)
  end

  def restaurant_list
    l = []
    Restaurant.all.each do |restaurant|
      l << restaurant.name
    end
    return l
  end

  # Create new User
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation,
                                   :payment_type, :latitude, 
                                   :longitude, :the_geom_meter, 
                                   :smoker, :drink_level, 
                                   :dress_preference, :ambience, 
                                   :transport, :marital_status, 
                                   :hijos, :birth_year, :interest, 
                                   :personality, :religion, :activity, 
                                   :color, :weight, :budget, :height)
    end
end

