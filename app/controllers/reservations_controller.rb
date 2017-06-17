class ReservationsController < ApplicationController

    def index
      @reservation = Reservation.all
    end

    def show
      @reservation = Reservation.find(params[:id])
    end

    def new
      @reservation = Reservation.new
    end

    def reservation_params
      params.required(:reservation).permit(:time, :date, :party_number)
    end

    def create
      @reservation = Reservation.create(reservation_params)
      if @reservation.save
        flash[:notice] = "Reservation Saved!"
        redirect_back reservation_path
      else
        render 'reservation/show'
      end
    end

    def edit
      @reservation = Reservation.find(params[:reservation_id])
    end

    def update
      @reservation = Reservation.find(params[:reservation_id])
      if @reservation.update(reservation_params)
        flash[:notice] = "Reservation Updated!"
        redirect_to @reservation
      else
        redirect_back_or_to @reservation
      end
    end

    def destroy
      @reservation = Reservation.find(params[:id])
      @reservation.destroy
      flash[:alert] = "Reservation Deleted!"
      redirect_to '/restaurants'
    end

  end


end
