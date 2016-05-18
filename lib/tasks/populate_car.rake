require 'open-uri'
task :populate_car => :environment do
	for i in 0..9
		image = open(Rails.public_path + "images/image#{i}.jpg")
		a = [0,1,2,3]
		b = [4,5,6]
		c = [7,8,9]
		if a.include? i
	    car = Car.create!(name: "Car#{i}", year: "2016", price: "1#{i} lakhs", image: image, seller_id: 1, model_type: "HATCHBACK")
	  elsif b.include? i
	  	car = Car.create!(name: "Car#{i}", year: "2016", price: "1#{i} lakhs", image: image, seller_id: 1, model_type: "SEDAN")
	  elsif c.include? i
	  	car = Car.create!(name: "Car#{i}", year: "2016", price: "1#{i} lakhs", image: image, seller_id: 1, model_type: "SUV/MUV")
	  end
	  car.save
	  p i
	end
end