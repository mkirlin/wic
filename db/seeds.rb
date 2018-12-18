# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  first_name: 'Michael',
  last_name: 'Kirlin',
  email: 'mkirlin@gmail.com',
  password: 'password',
  city: 'Chicago',
  about: 'I like apples',
  gender: 'male',
  training: 'less than 1 year',
  experience: '1-3 years'
)

User.all.each &:confirm
