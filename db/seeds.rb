# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

  User.destroy_all
  Baby.destroy_all

  puts 'Creating Users...'

  user1 = User.create!(email: "adam@email.com", password: "123456")
  user2 = User.create!(email: "aurelie@email.com", password: "123456")
  user3 = User.create!(email: "athena@email.com", password: "123456")

  puts 'Creating Babies...'

  baby1 = Baby.create!(name: "Louis", birthdate: "01/02/2010", user: user1)
  baby2 = Baby.create!(name: "Marie", birthdate: "10/03/2016", user: user1)

  baby3 = Baby.create!(name: "Gédéon", birthdate: "01/02/2010", user: user2)
  baby4 = Baby.create!(name: "Clémentine", birthdate: "01/02/2010", user: user2)

  baby5 = Baby.create!(name: "Zoé", birthdate: "26/02/2015",user: user3)
  baby6 = Baby.create!(name: "Baltazar", birthdate: "01/05/2018", user: user3)

  brfeeding1 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby6)
  brfeeding2 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, baby: baby3)
  brfeeding3 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, baby: baby2)
  brfeeding4 = BreastFeeding.create!(start: "15:15", duration_minutes: 20, baby: baby1)
  brfeeding5 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby5)
  brfeeding6 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, baby: baby3)
  brfeeding7 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, baby: baby4)
  brfeeding8 = BreastFeeding.create!(start: "15:30", duration_minutes: 20, baby: baby1)
  brfeeding9 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby4)
  brfeeding10 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, baby: baby3)
  brfeeding11 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, baby: baby2)
  brfeeding12 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, baby: baby1)
  brfeeding13 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby3)
  brfeeding14 = BreastFeeding.create!(start: "02:10", duration_minutes: 35, baby: baby4)
  brfeeding15 = BreastFeeding.create!(start: "03:15", duration_minutes: 15, baby: baby5)
  brfeeding16 = BreastFeeding.create!(start: "05:15", duration_minutes: 20, baby: baby3)
  brfeeding17 = BreastFeeding.create!(start: "04:10", duration_minutes: 25, baby: baby5)
  brfeeding18 = BreastFeeding.create!(start: "23:10", duration_minutes: 35, baby: baby1)
  brfeeding19 = BreastFeeding.create!(start: "22:15", duration_minutes: 15, baby: baby2)
  brfeeding20 = BreastFeeding.create!(start: "20:15", duration_minutes: 20, baby: baby3)
  brfeeding21 = BreastFeeding.create!(start: "12:10", duration_minutes: 25, baby: baby4)
  brfeeding22 = BreastFeeding.create!(start: "18:10", duration_minutes: 35, baby: baby5)
  brfeeding23 = BreastFeeding.create!(start: "19:15", duration_minutes: 15, baby: baby4)
  brfeeding24 = BreastFeeding.create!(start: "02:15", duration_minutes: 20, baby: baby2)
  brfeeding25 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, baby: baby2)
  brfeeding26 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby1)
  brfeeding27 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, baby: baby1)
  brfeeding28 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, baby: baby6)
  brfeeding29 = BreastFeeding.create!(start: "15:15", duration_minutes: 20, baby: baby2)
  brfeeding30 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby3)
  brfeeding31 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, baby: baby5)
  brfeeding32 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, baby: baby2)
  brfeeding33 = BreastFeeding.create!(start: "15:30", duration_minutes: 20, baby: baby5)
  brfeeding34 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby1)
  brfeeding35 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, baby: baby4)
  brfeeding36 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, baby: baby3)
  brfeeding37 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, baby: baby2)
  brfeeding38 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, baby: baby1)
  brfeeding39 = BreastFeeding.create!(start: "02:10", duration_minutes: 35, baby: baby3)
  brfeeding40 = BreastFeeding.create!(start: "03:15", duration_minutes: 15, baby: baby4)
  brfeeding41 = BreastFeeding.create!(start: "05:15", duration_minutes: 20, baby: baby6)
  brfeeding42 = BreastFeeding.create!(start: "04:10", duration_minutes: 25, baby: baby2)
  brfeeding43 = BreastFeeding.create!(start: "23:10", duration_minutes: 35, baby: baby3)
  brfeeding44 = BreastFeeding.create!(start: "22:15", duration_minutes: 15, baby: baby6)
  brfeeding45 = BreastFeeding.create!(start: "20:15", duration_minutes: 20, baby: baby4)
  brfeeding46 = BreastFeeding.create!(start: "12:10", duration_minutes: 25, baby: baby3)
  brfeeding47 = BreastFeeding.create!(start: "18:10", duration_minutes: 35, baby: baby2)
  brfeeding48 = BreastFeeding.create!(start: "19:15", duration_minutes: 15, baby: baby1)
  brfeeding49 = BreastFeeding.create!(start: "02:15", duration_minutes: 20, baby: baby2)
  brfeeding50 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, baby: baby2)

  puts 'Creating Feedings(Bottlefeeding)...'

  bofeeding1 = Bottlefeeding.create!(quantity: 75, baby: baby3)
  bofeeding5 = Bottlefeeding.create!(quantity: 75, baby: baby3)
  bofeeding9 = Bottlefeeding.create!(quantity: 75, baby: baby3)
  bofeeding13 = Bottlefeeding.create!(quantity: 75, baby: baby3)
  bofeeding19 = Bottlefeeding.create!(quantity: 60, baby: baby3)
  bofeeding25 = Bottlefeeding.create!(quantity: 75, baby: baby3)
  bofeeding31 = Bottlefeeding.create!(quantity: 60, baby: baby3)
  bofeeding34 = Bottlefeeding.create!(quantity: 120, baby: baby3)


  bofeeding2 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2)
  bofeeding3 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5)
  bofeeding4 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby6)
  bofeeding6 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2)
  bofeeding7 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby1)
  bofeeding8 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby6)
  bofeeding10 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2)
  bofeeding11 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5)
  bofeeding12 = Bottlefeeding.create!(start: "21:40", quantity: 40, baby: baby6)
  bofeeding14 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2)
  bofeeding15 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5)
  bofeeding16 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby6)
  bofeeding17 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby4)
  bofeeding18 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby5)
  bofeeding20 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby2)
  bofeeding21 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby6)
  bofeeding22 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby4)
  bofeeding23 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby2)
  bofeeding24 = Bottlefeeding.create!(start: "21:40", quantity: 40, baby: baby5)
  bofeeding26 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby1)
  bofeeding27 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby1)
  bofeeding28 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby2)
  bofeeding29 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby5)
  bofeeding30 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby6)
  bofeeding32 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby2)
  bofeeding33 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby1)
  bofeeding35 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5)
  bofeeding36 = Bottlefeeding.create!(start: "21:40", quantity: 40, baby: baby4)


  Baby.all.each do |baby|
    bottlefeeding = baby.bottlefeedings
    bottlefeeding.each_with_index do |feeding, index|
      feeding.update!(start: DateTime.now - index)
    end
    breastfeeding = baby.breastfeedings
    breastfeeding.each_with_index do |feeding, index|
      feeding.update!(start: DateTime.now - index )
    end
  end


  puts "Seeds created!"



