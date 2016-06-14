# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(
  title: "Киото маки",
  description: "Рис, рыба, капуста, икра",
  image_url: "kioto-maki.jpg",
  price: "1000"
)

Product.create(
  title: "Ролл",
  description: "Рис, икра",
  image_url: "roll-c.jpg",
  price: "3500"
)

Product.create(
  title: "Роллс ролл",
  description: "Рис, угорь",
  image_url: "roll-k.jpg",
  price: "2000"
)

Product.create(
  title: "Ролл ветчина",
  image_url: "roll-l.jpg",
  description: "Рис, капуста, ветчина",
  price: "1500"
)

Product.create(
  title: "Роял Ролл",
  description: "Капуста, икра",
  image_url: "spice-tobic.jpg",
  price: "2500"
)

Slider.delete_all

Slider.create(
  name: '1',
  image_url: 'slide1.jpg',
  is_public: true,
  weight: 1
)

Slider.create(
  name: '2',
  image_url: 'slide2.jpg',
  is_public: true,
  weight: 2
)

Slider.create(
  name: '3',
  image_url: 'slide3.jpg',
  is_public: true,
  weight: 3
)

Admin.delete_all

Admin.create(
  email: 'mokozhe@gmail.com',
  password: '123asd123',
  password_confirmation: '123asd123'
  )

