# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
# Wipe the database
# User.destroy_all
# # Let's create a bunch of records
500.times do
  User.create({
    name: FFaker::Name.first_name,
    email: FFaker::Internet.email,
    native_lang: FFaker::Locale.language,
    learn_lang: FFaker::Locale.language,
    })
end
