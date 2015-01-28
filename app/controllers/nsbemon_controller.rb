class NsbemonController < ApplicationController
  before_filter :authenticate_user!
  
  def main
    
  end

  def train
    @select = current_user
  end 

  def add_amounts
    
    params.each do |key, value|
      if (key.to_s[/personal_\d/])
        current_user.experience += 20  
      end

      if (key.to_s[/study_\d/])
        current_user.experience += 15
      end

      if (key.to_s[/professor_\d/])
        current_user.experience += 10
      end

      if (key.to_s[/in_class_\d/])
        current_user.experience += 5
      end
    end

    current_user.level = 10 + (current_user.experience / 50)

    current_user.save

    redirect_to nsbemon_main_path, notice: "Successfully logged points"
  end
  
end
