# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: 'ben', last_name: 'taylor')
Student.create(first_name: 'bryn', last_name: 'heath')
Student.create(first_name: 'amy', last_name: 'something')

SchoolClass.create(title: 'english', room_number: 8)
SchoolClass.create(title: 'maths', room_number: 4)
SchoolClass.create(title: 'science', room_number: 11)