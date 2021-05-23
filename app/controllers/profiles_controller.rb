class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:profile_id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profiles_path
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:username, :description, :password, :email, :firstname, :lastname)
  end

end
