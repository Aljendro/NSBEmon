class ProfilesController < ApplicationController
  
  # GET /profiles/new
  def new
    @profile = current_user.create_profile
  end

  # POST /profiles
  def create
    @profile = current_user.profile.new(profile_params)
    if @profile.save
      redirect_to nsbemon_main_path, notice: "Successfully created profile"
    else
      render action: :new
    end
  end

  # GET /profiles/1/edit
  def edit
    @profile = current_user.profile
  end

  # PATCH/PUT /profiles/1
  def update
    @profile = current_user.profile

    if @profile.update(profile_params)
      redirect_to nsbemon_main_path, notice: 'Updated user information successfully.'
    else
      render action: :edit
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :graduation_year, :major, :trainer_name, :gpa)
    end

end
