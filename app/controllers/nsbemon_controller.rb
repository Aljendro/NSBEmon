class NsbemonController < ApplicationController
  before_filter :authenticate_user!
  
  def main
    
  end

  def train
    @select = current_user
  end 

  def add_amounts
    #Create a record for ADMIN
    new_record = current_user.record.create(checked_boxes: [])
    new_record.checked_boxes_will_change!

    params.each do |key, value| 
      if (key.to_s[/nsbe_\w+/])
        add_points(value)

        new_record.checked_boxes << key.to_s
      end
    end

    #Check if the array actually changed
    if new_record.checked_boxes.empty?
      new_record.destroy
    else
      new_record.save!
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
