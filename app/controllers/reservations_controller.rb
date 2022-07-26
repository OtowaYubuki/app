class ReservationsController < ApplicationController
 def index
    @reservations = Reservation.all
 end

 def new
  @reservations = Reservation.new
 end

 def confirm
    @reservations = Reservation.new(@attr) 
   if @reservations.invalid?
    render :new
   end
 end
 def complete
    Reservation.create!(@attr)
 end
end