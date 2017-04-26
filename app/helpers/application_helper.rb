module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # Returns a list of restaurants
  def restaurant_list
  	l = []
  	Restaurant.all.each do |restaurant|
  		l << restaurant.name
  	end
  	return l
  end

  def average_rating
    ratings = Rate.all
    average = {}

    ratings.each do |r|
      average[r.restaurant] = {restaurant: r.restaurant, total_rating: 0, food_rating: 0, service_rating: 0, count: 0} if average[r.restaurant].nil?

      average[r.restaurant][:total_rating] += r.rating
      average[r.restaurant][:food_rating] += r.food_rating
      average[r.restaurant][:service_rating] += r.service_rating
      average[r.restaurant][:count] += 1
    end

    average.each do |name, r|
      average[name][:total_rating] /= average[name][:count].to_f
      average[name][:food_rating] /= average[name][:count].to_f
      average[name][:service_rating] /= average[name][:count].to_f
    end
  end

  def highest_average_rating
    rate = average_rating
    highest = rate.first[1] if rate.size != 0
    if highest.nil?
      return nil
    end

    rate.each do |name, r|
      highest = rate[name] if highest[:total_rating] < r[:total_rating]
    end
    return highest
  end
end
