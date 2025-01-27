class UsersController < ApplicationController
  before_action :authenticate_user!
  def profile
    @reservations = current_user.reservations.includes(:massage)
  end
end
