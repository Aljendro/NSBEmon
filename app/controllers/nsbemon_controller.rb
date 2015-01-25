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
        current_user.experience += 5  
      end

      if (key.to_s[/study_\d/])
        current_user.experience += 10
      end

      if (key.to_s[/professor_\d/])
        current_user.experience += 20
      end

      if (key.to_s[/in_class_\d/])
        current_user.experience += 15
      end
    end
    current_user.save
  end
  
end
