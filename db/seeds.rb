# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favour.destroy_all

u = User.create(email: 'dt@ga.co', password: 'pudding')
u.reload

romance = ['I will cook you dinner','I will give you a full body massage', 'I will give you a personal training session',
  'I will take you on a double-date', 'I will shave your back', 'I will watch your favourite movie',
  'I will give you a foot rub']

romance.each do |num|
 Favour.create(category: 'romantic', message: "#{num}")
end

skills = ['I teach you to make a work of art','I will teach you to cook a meal', 'I will teach you a language',
  'I will teach you to play an instrument', 'I will teach you woodworking', 'I will teach you how to sew',
  'I will teach you something I know already']

skills.each do |num|
 Favour.create(category: 'knowledge', message: "#{num}")
end

chores = ['I will help organise a room', 'I will clean the house', 'I will do the gardening',
  'I will do the yard work', 'I will run errands', 'I will preform some repair work',
  'I will do the sewing', 'I will cater a party', 'I will house sit', 'I will give you interior design help',
  'I will landscape the yard', 'I will make the bed', 'I will wash the dishes' ]

chores.each do |num|
 Favour.create(category: 'around the house', message: "#{num}")
end

pet = ['I will wash a pet', 'I will walk the dog', 'I will look after a pet',
  'I will feed a pet' ]

pet.each do |num|
 Favour.create(category: 'pets', message: "#{num}")
end

job = ['I will give you help with your resume', 'I will give you career advice', 'I will go to a meet-up with you',
  'I will help you expand your professional network' ]

job.each do |num|
 Favour.create(category: 'career', message: "#{num}")
end