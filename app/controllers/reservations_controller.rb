class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def new
    puts "DEBUG: massage_id => #{params[:massage_id]}" # Debug log
    @massage = Massage.find_by(id: params[:massage_id])
    if @massage.nil?
      redirect_to root_path, alert: "Massage not found. Please select a valid massage."
    else
      @reservation = Reservation.new
    end
  end

  def create
    @reservation = current_user.reservations.build(reservation_params)
    @massage = Massage.find_by(id: reservation_params[:massage_id]) # Fetch the massage again

    if @reservation.save
      redirect_to user_profile_path, notice: "Reservation created successfully"
    else
      render :new, alert: "Failed to create reservation. Please try again."
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_time, :massage_id)
  end
end
