# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Business.destroy_all
User.destroy_all

isa = User.create(name: "Isabelle", email: "isa@flatiron.com")
greg = User.create(name: "Greg", email: "Gregg@theegg.com")  

cs = Business.create(name: "Crown Shy", location: "70 Pine St, New York, NY 10005", website_url: "http://crownshy.nyc", phone_number: "212-517-1932", img_url:"https://pyxis.nymag.com/v1/imgs/f2f/fc2/83a2e6cd1d745a2a3a52e9e051e795ea73-crown-shy-08.2x.h467.w700.jpg")
shalom = Business.create(name: "Shalom Japan", location: "310 S 4th St, Brooklyn, NY 11211", website_url: "http://shalomjapannyc.com", phone_number: "718-388-4012", img_url:"https://i.pinimg.com/originals/c9/ef/58/c9ef583067a92c8fe854d84adb1189cd.jpg ")
