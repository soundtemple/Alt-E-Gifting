# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favour.destroy_all
Card.destroy_all
User.destroy_all
Title.destroy_all

u1 = User.create(email: 'ej@ga.co', password: 'admin')
u1.reload
u2 = User.create(email: 'tim@ga.co', password: 'admin')
u2.reload
u3 = User.create(email: 'zutaar@ga.co', password: 'admin')
u3.reload
u4 = User.create(email: 'ari@ga.co', password: 'admin')
u4.reload


romance = ['I will cook dinner for you','I will give you a full body massage', 'I will give you a PT session',
  'I will take you on a double-date', 'I will shave your back', 'I will watch your favourite movie',
  'I will give you a foot rub' ]

romance.each do |num|
 Favour.create(category: 'romantic', message: "#{num}")
end

skills = ['I will teach you to make a work of art', 'I will teach you to cook a meal', 'I will teach you a language',
  'I will teach you to play an instrument', 'I will teach you PHP', 'I will learn to dance', 'I will teach you how to sew',
  'I will teach you something I know already']

skills.each do |num|
 Favour.create(category: 'knowledge', message: "#{num}")
end

chores = ['I will help organise a room', 'I will clean the house', 'I will do the gardening',
  'I will do the yard work', 'I will run errands', 'I will perform some repair work',
  'I will do the sewing', 'I will cater a party', 'I will house sit', 'I will floss my teeth',
  'I will kill any bug', 'I will make the bed', 'I will wash the dishes', 'I will pick up the kids',
  'I will wake up to check on the baby' ]

chores.each do |num|
 Favour.create(category: 'around the house', message: "#{num}")
end

pet = ['I will wash your pet', 'I will walk your dog', 'I will look after your pet',
  'I will replace your pet', 'I will feed your pet', 'I will bathe your cat' ]

pet.each do |num|
 Favour.create(category: 'pets', message: "#{num}")
end

job = [ 'I will give you help with your resume', 'I will get you professional career advice', 'I will go to a meet-up with you',
  'I will get you fired', 'I will help you find work', 'I will call in sick for you']

job.each do |num|
 Favour.create(category: 'career', message: "#{num}")
end


kids = [ 'I will baby sit', 'I will organise a playdate', 'I will child proof the house', 'I will read bedtime stories',
' I will entertain the chidren for the day', 'I will find the children', 'I will watch a sporting activity', 'I will take us out for pancakes',
'I will make the hot chocolate', 'I will put the toys away', 'I will clean my room', 'I will get ready for school on time' ]

kids.each do |num|
 Favour.create(category: 'kids', message: "#{num}")
end

text = ['JUST BECAUSE', 'I LOVE YOU', 'THANK YOU', 'HAPPY BIRTHDAY', 'HAPPY MOTHERS DAY', 'HAPPY FATHERS DAY',
  'MERRY CHRISTMAS', 'FOR A DAY', 'FOR A WEEK', 'FOR A MONTH', 'FOR A YEAR', 'I OWE YOU', 'PAY BACK!', 'F*** YOU!']

text.each do |num|
  Title.create(name: "#{num}")
end

users = [u1,u2,u3,u4]

users.each do |user|
  Card.create(user_id: user.id, recipient_email: 'dt_wdi@ga.com', recipient_name: 'DT', title_id: Title.first.id, sign_off: 'Harry', message: 'I will give you career advice',
   background_img: 'http://appointmentsbilanguage.co.uk/wp-content/uploads/2015/07/Career-Advice.jpg', background_col: '#933a4c' )
end
