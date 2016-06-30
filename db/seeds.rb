# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Product.delete_all

# Product.create(
#   title: "Киото маки",
#   description: "Рис, рыба, капуста, икра",
#   image_url: "kioto-maki.jpg",
#   price: "1000",
#   is_public: true,
#   category: Product::CATEGORIES[0],
#   is_hot: false
# )

# Product.create(
#   title: "Ролл",
#   description: "Рис, икра",
#   image_url: "roll-c.jpg",
#   price: "3500",
#   is_public: true,
#   category: Product::CATEGORIES[1],
#   is_hot: true
# )

# Product.create(
#   title: "Роллс ролл",
#   description: "Рис, угорь",
#   image_url: "roll-k.jpg",
#   price: "2000",
#   is_public: true,
#   category: Product::CATEGORIES[2],
#   is_hot: false
# )

# Product.create(
#   title: "Ролл ветчина",
#   image_url: "roll-l.jpg",
#   description: "Рис, капуста, ветчина",
#   price: "1500",
#   is_public: true,
#   category: Product::CATEGORIES[3],
#   is_sale: true
# )

# Product.create(
#   title: "Роял Ролл",
#   description: "Капуста, икра",
#   image_url: "spice-tobic.jpg",
#   price: "2500",
#   is_public: true,
#   category: Product::CATEGORIES[0],
#   is_new: true
# )

# Slider.delete_all

# Slider.create(
#   name: '1',
#   image_url: 'slide1.jpg',
#   is_public: true,
#   weight: 1
# )

# Slider.create(
#   name: '2',
#   image_url: 'slide2.jpg',
#   is_public: true,
#   weight: 2
# )

# Slider.create(
#   name: '3',
#   image_url: 'slide3.jpg',
#   is_public: true,
#   weight: 3
# )

# User.delete_all

# User.create(
#   email: 'mokozhe@gmail.com',
#   password: '123asd123',
#   password_confirmation: '123asd123',
#   admin: true
#   )

# 10.times do |n|
#   User.create(
#     email: "user_#{n}@mail.nn",
#     password: '123asd123',
#     password_confirmation: '123asd123',
#     admin: false
#   )
# end

# Review.delete_all

# 10.times do |n|
#   Review.create(
#     name: "user #{n}",
#     email: "user_#{n}@mail.nn",
#     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#     is_public: true
#   )
# end

Sale.delete_all

10.times do |n|
  Sale.create(
    title: "Test sale number #{n}",  
    image: "slide#{n}.jpg",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    is_public: true

  )
end
