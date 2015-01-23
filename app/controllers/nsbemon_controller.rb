class NsbemonController < ApplicationController
  before_filter :authenticate_user!
  
  def main
    
  end

  def train
    @select = current_user
  end 

  def add_amounts
    accept = params[:accept]

    if accept != nil
      puts "Accept value: " + accept
      current_user.experience = accept
      current_user.save
    else 
      puts "Accept value: nil"
    end

  end
  
end
