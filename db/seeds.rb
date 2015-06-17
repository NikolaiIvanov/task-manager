# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "demo@demo.com", name: "demo", password: "demo", password_confirmation: "demo")
User.create(email: "demo2@demo.com", name: "demo2", password: "demo2", password_confirmation: "demo2")
User.create(email: "demo3@demo.com", name: "demo3", password: "demo3", password_confirmation: "demo3")
