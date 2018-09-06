class ProfileController < ApplicationController
  def index
    @user = User.find_by(username: params[:id])
  end
end
