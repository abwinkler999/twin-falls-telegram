# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.find_or_create_by(name: "Twin Falls")
Tag.find_or_create_by(name: "Bright Plain")
Tag.find_or_create_by(name: "Elliotville")
Tag.find_or_create_by(name: "Spencerville")
Tag.find_or_create_by(name: "Samshire")
Tag.find_or_create_by(name: "Abroad")
Tag.find_or_create_by(name: "Exploration")
Tag.find_or_create_by(name: "Construction")
Tag.find_or_create_by(name: "Strife")
