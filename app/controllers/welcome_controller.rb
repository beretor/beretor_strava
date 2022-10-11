class WelcomeController < ApplicationController
  def index
  end

  def time_to_ride
    time = Time.now
    time_to_ride = (time - 100000).hour
    puts time_to_ride
  end

end
