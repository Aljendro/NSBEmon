class NsbemonController < ApplicationController
  before_filter :authenticate_user!
  
  def main
    
  end

  def train
    @select = current_user
  end 

  def add_amounts

    temp_record = []
    temp_score  = []

    params.each do |key, value| 
      if (key.to_s[/nsbe_\w+/])
        add_points(value)

        temp_record << key.to_s
        temp_score  << value.to_s
      end
    end

    #Check if the array actually changed
    if !temp_record.empty?
      #Create a record for ADMIN
      new_record = current_user.record.create( checked_boxes: temp_record, 
                                               point_values: temp_score) 
    end

    current_user.level = 10 + (current_user.experience / 50)

    current_user.save

    redirect_to nsbemon_main_path, notice: "Successfully logged points"
  end

  private

  def add_points(point_amount)
    current_user.experience += point_amount.to_i
  end
    
end
