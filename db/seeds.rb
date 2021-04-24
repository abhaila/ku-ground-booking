require "open-uri"

image1 = URI.open('https://karachiunited.com/wp-content/uploads/2016/11/KU-HeaderImage-02.png')
# car1.photo.attach(io: image1, filename: 'image1.jpg', content_type: 'image/jpg')
image2 = URI.open('https://karachiunited.com/wp-content/uploads/2016/11/KU-HeaderImage-03.png')
# car2.photo.attach(io: image2, filename: 'image2.jpg', content_type: 'image/jpg')
image3 = URI.open('https://karachiunited.com/wp-content/uploads/2016/11/KU-HeaderImage-04.png')
# car3.photo.attach(io: image3, filename: 'image3.jpg', content_type: 'image/jpg')

# @message.image.attach(io: File.open('/path/to/file'), filename: 'file.pdf')

puts "Cleaning database...."
User.destroy_all

puts "Creating users..."

User.create!(email: "a@lewagon.com" , password: "secret")

puts "Creating facilities..."
main_field = Facility.create!(name: "Main Field", description: "Monday to Sunday
                                                                8am to 6pm : Rs 10,000/-")
turf = Facility.create!(name: "Turf", description: "Monday to Sunday
                                                    8am to 4pm : Rs.1000 /-
                                                    4pm to 6 pm : Rs1500 /-
                                                    6 pm to 12am: Rs.2000/-")
volley_ball = Facility.create!(name: "Volleyball", description: "Monday to Sunday
                                                                 5pm to 12 am : Rs 1,500/-")

main_field.photos.attach(io: image1, filename: 'image1.jpg', content_type: 'image/jpg')
turf.photos.attach(io: image2, filename: 'image2.jpg', content_type: 'image/jpg')
volley_ball.photos.attach(io: image3, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Creating bookings..."
# Booking.create!(user: User.all.sample, car: Car.all.sample, start_date: "2020-11-19 12:18:00 UTC", end_date: "2020-11-25 12:18:00 UTC")
# Booking.create!(user: User.all.sample, car: Car.all.sample, start_date: "2020-11-19 12:18:00 UTC", end_date: "2020-11-25 12:18:00 UTC")
# Booking.create!(user: User.all.sample, car: Car.all.sample, start_date: "2020-11-19 12:18:00 UTC", end_date: "2020-11-25 12:18:00 UTC")

# puts "Creating reviews..."

# # create reviews
# 50.times do
#   Review.create!(stars: rand(1..5), car: Car.all.sample)
# end

puts "Done! #{User.count} users created."
puts "Done! #{Facility.count} cars created."
# puts "Done! #{Booking.count} bookings created."
# puts "Done! #{Review.count} reviews created."
