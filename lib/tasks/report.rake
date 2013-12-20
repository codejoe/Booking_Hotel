namespace :report do
  desc "Report Booking Resume"
  task booking: :environment do
    # @bookings = Booking.where(check_in: Date.yesterday)
    # BookingMailer.send_report(bookings).deliver
    puts 'Running Booking Report...'
  end

  desc "Report Hotel Income"
  task income: :environment do
    
  end

end
