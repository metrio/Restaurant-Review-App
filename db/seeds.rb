# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Review.destroy_all
Business.destroy_all
User.destroy_all

50.times do 
    User.create(name: Faker::Name.unique.name, email: Faker::Internet.email, password_digest: Faker::Verb.base)
end


cs = Business.create(name: "Crown Shy", location: "70 Pine St, New York, NY 10005", website_url: "http://crownshy.nyc", phone_number: "212-517-1932", img_url:"https://pyxis.nymag.com/v1/imgs/f2f/fc2/83a2e6cd1d745a2a3a52e9e051e795ea73-crown-shy-08.2x.h467.w700.jpg")
shalom = Business.create(name: "Shalom Japan", location: "310 S 4th St, Brooklyn, NY 11211", website_url: "http://shalomjapannyc.com", phone_number: "718-388-4012", img_url:"https://i.pinimg.com/originals/c9/ef/58/c9ef583067a92c8fe854d84adb1189cd.jpg ")
taverna = Business.create(name: "Ela Taverna", location: "98 Berry st, Brooklyn, NY 11249", website_url: "http://elatavernanyc.com", phone_number: "718-599-1911", img_url:"https://media-cdn.tripadvisor.com/media/photo-s/13/76/6b/2d/ela-taverna.jpg")
nomad = Business.create(name:"NoMad Restaurant", location: "1170 Broadway, New York, NY 100021", website_url: "http://thenomadhotel.com", phone_number: "212-796-1500", img_url:"https://static01.nyt.com/images/2012/06/20/dining/20REST1_SPAN/20JPREST1-articleLarge.jpg?quality=75&auto=webp&disable=upscale")
rockmeisha = Business.create(name: "Rockmeisha", location: "11 Barrow St, New York, NY 10014", website_url: "http://rockmeisha-izakaya.business.site", phone_number: "212-675-7775", img_url: "https://s3-media0.fl.yelpcdn.com/bphoto/aHQ1EiDeAfvRB1Rywx8X3w/l.jpg")
chipotle = Business.create(name: "Chipotle", location: "501 7th Ave, New York, NY 10018", website_url: "http://chipotle.com", phone_number: "212-840-0486", img_url: "https://www.thespruceeats.com/thmb/Kr1nFsOe7QOonmBRxvbTIF-QwDk=/2880x1920/filters:fill(auto,1)/copycat-chipotle-chicken-burrito-bowl-4173869-hero-01-12a58fec59284f0cac31a49a80380fcd.jpg")
atla = Business.create(name: "ATLA", location: "372 Lafayette St, New York, NY 10012", website_url: "http://atlanyc.com", phone_number: "347-662-3522", img_url: "https://www.theworlds50best.com/discovery/filestore/jpg/Atla-NewYork-USA-03.jpg")
superiority = Business.create(name: "Superiority Burger", location: "430 E 9th St, NY 10009", website_url: "http://www.superiorityburger.com", phone_number: "212-256-1192", img_url:"https://cdn.vox-cdn.com/thumbor/HTirqwroDFwiCXeJ0wME-Jzeokw=/0x0:1200x802/1200x800/filters:focal(504x305:696x497)/cdn.vox-cdn.com/uploads/chorus_image/image/57620241/superiority_burger-11.0.0.0.jpg")




90.times do
   Review.create(description: Faker::Restaurant.review, covid_index: rand(1..5), business_id: Business.all.sample.id, user_id: User.all.sample.id) 
end