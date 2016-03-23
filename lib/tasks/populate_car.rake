require 'open-uri'
task :populate_car => :environment do
	for i in 0..9
		image = open(Rails.public_path + "images/image#{i}.jpg")
	  car = Car.create!(name: "Car#{i}", year: "2016", price: "1#{i} lakhs", image: image)
	  car.save
	  p i
	end
end