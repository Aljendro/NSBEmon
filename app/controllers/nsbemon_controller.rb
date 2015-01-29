class NsbemonController < ApplicationController
  before_filter :authenticate_user!
  
  def main
    
  end

  def train
    @select = current_user
  end 

  def add_amounts
    
    params.each { |key, value| add_points(value) }

    current_user.level = 10 + (current_user.experience / 50)

    current_user.save

    redirect_to nsbemon_main_path, notice: "Successfully logged points"
  end

  private

  def add_points(point_amount)
    current_user.experience += point_amount.to_i
  end
    
end
