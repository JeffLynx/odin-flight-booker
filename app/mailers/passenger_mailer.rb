class PassengerMailer < ApplicationMailer
  def confirmation_email(passenger)
    @passenger = passenger
    @booking = passenger.booking

    mail(
      to: @passenger.email,
      subject: "You have booked your ticket!"
    )
  end
end
