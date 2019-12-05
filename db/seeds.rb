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

  user1 = User.create!(email: "adam@email.com", password: "123456", name: "Adam")
  user2 = User.create!(email: "aurelie@email.com", password: "123456", name: "Aurelie" )
  user3 = User.create!(email: "athena@email.com", password: "123456", name: "Athena")

  puts 'Creating Babies...'

  baby1 = Baby.create!(name: "Louis", birthdate: "01/02/2010", user: user1)
  baby2 = Baby.create!(name: "Marie", birthdate: "10/03/2016", user: user1)

  baby3 = Baby.create!(name: "Gédéon", birthdate: "01/02/2010", user: user2)
  baby4 = Baby.create!(name: "Clémentine", birthdate: "01/02/2010", user: user2)

  baby5 = Baby.create!(name: "Zoé", birthdate: "26/02/2015",user: user3)
  baby6 = Baby.create!(name: "Baltazar", birthdate: "01/05/2018", user: user3)

  puts 'Creating Caretakers...'

  CareTaking.create!(baby: baby1, user: user3)
  CareTaking.create!(baby: baby1, user: user2)
  CareTaking.create!(baby: baby5, user: user1)
  CareTaking.create!(baby: baby5, user: user3)
  CareTaking.create!(baby: baby3, user: user2)
  CareTaking.create!(baby: baby3, user: user1)

  puts 'Creating Breastfeedings...'

  brfeeding1 = BreastFeeding.create!(start: "10:10", duration_minutes: 25,  breast_side: "R", baby: baby6, user: baby6.user)
  brfeeding2 = BreastFeeding.create!(start: "12:10", duration_minutes: 35,  breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding3 = BreastFeeding.create!(start: "13:15", duration_minutes: 15,  breast_side: "R", baby: baby2, user: baby2.user)
  brfeeding4 = BreastFeeding.create!(start: "15:15", duration_minutes: 20,  breast_side: "L", baby: baby1, user: baby1.user)
  brfeeding5 = BreastFeeding.create!(start: "10:10", duration_minutes: 25,  breast_side: "R", baby: baby5, user: baby5.user)
  brfeeding6 = BreastFeeding.create!(start: "12:10", duration_minutes: 35,  breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding7 = BreastFeeding.create!(start: "13:15", duration_minutes: 15,  breast_side: "R", baby: baby4, user: baby4.user)
  brfeeding8 = BreastFeeding.create!(start: "15:30", duration_minutes: 20,  breast_side: "L", baby: baby1, user: baby1.user)
  brfeeding9 = BreastFeeding.create!(start: "10:10", duration_minutes: 25,  breast_side: "R", baby: baby4, user: baby4.user)
  brfeeding10 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding11 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, breast_side: "L", baby: baby2, user: baby2.user)
  brfeeding12 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, breast_side: "L", baby: baby1, user: baby1.user)
  brfeeding13 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, breast_side: "R", baby: baby3, user: baby3.user)
  brfeeding14 = BreastFeeding.create!(start: "02:10", duration_minutes: 35, breast_side: "R", baby: baby4, user: baby4.user)
  brfeeding15 = BreastFeeding.create!(start: "03:15", duration_minutes: 15, breast_side: "R", baby: baby5, user: baby5.user)
  brfeeding16 = BreastFeeding.create!(start: "05:15", duration_minutes: 20, breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding17 = BreastFeeding.create!(start: "04:10", duration_minutes: 25, breast_side: "L", baby: baby5, user: baby5.user)
  brfeeding18 = BreastFeeding.create!(start: "23:10", duration_minutes: 35, breast_side: "L", baby: baby1, user: baby1.user)
  brfeeding19 = BreastFeeding.create!(start: "22:15", duration_minutes: 15, breast_side: "L", baby: baby2, user: baby2.user)
  brfeeding20 = BreastFeeding.create!(start: "20:15", duration_minutes: 20, breast_side: "R", baby: baby3, user: baby3.user)
  brfeeding21 = BreastFeeding.create!(start: "12:10", duration_minutes: 25, breast_side: "L", baby: baby4, user: baby4.user)
  brfeeding22 = BreastFeeding.create!(start: "18:10", duration_minutes: 35, breast_side: "L", baby: baby5, user: baby5.user)
  brfeeding23 = BreastFeeding.create!(start: "19:15", duration_minutes: 15, breast_side: "R", baby: baby4, user: baby4.user)
  brfeeding24 = BreastFeeding.create!(start: "02:15", duration_minutes: 20, breast_side: "R", baby: baby2, user: baby2.user)
  brfeeding25 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, breast_side: "L", baby: baby2, user: baby2.user)
  brfeeding26 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, breast_side: "L", baby: baby1, user: baby1.user)
  brfeeding27 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, breast_side: "R", baby: baby1, user: baby1.user)
  brfeeding28 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, breast_side: "L", baby: baby6, user: baby6.user)
  brfeeding29 = BreastFeeding.create!(start: "15:15", duration_minutes: 20, breast_side: "L", baby: baby2, user: baby2.user)
  brfeeding30 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding31 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, breast_side: "L", baby: baby5, user: baby5.user)
  brfeeding32 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, breast_side: "R", baby: baby2, user: baby2.user)
  brfeeding33 = BreastFeeding.create!(start: "15:30", duration_minutes: 20, breast_side: "L", baby: baby5, user: baby5.user)
  brfeeding34 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, breast_side: "R", baby: baby1, user: baby1.user)
  brfeeding35 = BreastFeeding.create!(start: "12:10", duration_minutes: 35, breast_side: "L", baby: baby4, user: baby4.user)
  brfeeding36 = BreastFeeding.create!(start: "13:15", duration_minutes: 15, breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding37 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, breast_side: "L", baby: baby2, user: baby2.user)
  brfeeding38 = BreastFeeding.create!(start: "10:10", duration_minutes: 25, breast_side: "R", baby: baby1, user: baby1.user)
  brfeeding39 = BreastFeeding.create!(start: "02:10", duration_minutes: 35, breast_side: "R", baby: baby3, user: baby3.user)
  brfeeding40 = BreastFeeding.create!(start: "03:15", duration_minutes: 15, breast_side: "R", baby: baby4, user: baby4.user)
  brfeeding41 = BreastFeeding.create!(start: "05:15", duration_minutes: 20, breast_side: "R", baby: baby6, user: baby6.user)
  brfeeding42 = BreastFeeding.create!(start: "04:10", duration_minutes: 25, breast_side: "R", baby: baby2, user: baby2.user)
  brfeeding43 = BreastFeeding.create!(start: "23:10", duration_minutes: 35, breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding44 = BreastFeeding.create!(start: "22:15", duration_minutes: 15, breast_side: "L", baby: baby6, user: baby6.user)
  brfeeding45 = BreastFeeding.create!(start: "20:15", duration_minutes: 20, breast_side: "L", baby: baby4, user: baby4.user)
  brfeeding46 = BreastFeeding.create!(start: "12:10", duration_minutes: 25, breast_side: "L", baby: baby3, user: baby3.user)
  brfeeding47 = BreastFeeding.create!(start: "18:10", duration_minutes: 35, breast_side: "R", baby: baby2, user: baby2.user)
  brfeeding48 = BreastFeeding.create!(start: "19:15", duration_minutes: 15, breast_side: "L", baby: baby1, user: baby1.user)
  brfeeding49 = BreastFeeding.create!(start: "02:15", duration_minutes: 20, breast_side: "L", baby: baby2, user: baby2.user)
  brfeeding50 = BreastFeeding.create!(start: "21:15", duration_minutes: 20, breast_side: "R", baby: baby2, user: baby2.user)

  puts 'Creating Feedings(Bottlefeeding)...'

  bofeeding1 = Bottlefeeding.create!(quantity: 75, baby: baby3, user: baby3.user)
  bofeeding5 = Bottlefeeding.create!(quantity: 75, baby: baby3, user: baby3.user)
  bofeeding9 = Bottlefeeding.create!(quantity: 75, baby: baby3, user: baby3.user)
  bofeeding13 = Bottlefeeding.create!(quantity: 75, baby: baby3, user: baby3.user)
  bofeeding19 = Bottlefeeding.create!(quantity: 60, baby: baby3, user: baby3.user)
  bofeeding25 = Bottlefeeding.create!(quantity: 75, baby: baby3, user: baby3.user)
  bofeeding31 = Bottlefeeding.create!(quantity: 60, baby: baby3, user: baby3.user)
  bofeeding34 = Bottlefeeding.create!(quantity: 120, baby: baby3, user: baby3.user)


  bofeeding2 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2, user: baby2.user)
  bofeeding3 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5, user: baby5.user)
  bofeeding4 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby6, user: baby6.user)
  bofeeding6 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2, user: baby2.user)
  bofeeding7 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby1, user: baby1.user)
  bofeeding8 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby6, user: baby6.user)
  bofeeding10 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2, user: baby2.user)
  bofeeding11 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5, user: baby5.user)
  bofeeding12 = Bottlefeeding.create!(start: "21:40", quantity: 40, baby: baby6, user: baby6.user)
  bofeeding14 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby2, user: baby2.user)
  bofeeding15 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5, user: baby5.user)
  bofeeding16 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby6, user: baby6.user)
  bofeeding17 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby4, user: baby4.user)
  bofeeding18 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby5, user: baby5.user)
  bofeeding20 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby2, user: baby2.user)
  bofeeding21 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby6, user: baby6.user)
  bofeeding22 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby4, user: baby4.user)
  bofeeding23 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby2, user: baby2.user)
  bofeeding24 = Bottlefeeding.create!(start: "21:40", quantity: 40, baby: baby5, user: baby5.user)
  bofeeding26 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby1, user: baby1.user)
  bofeeding27 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby1, user: baby1.user)
  bofeeding28 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby2, user: baby2.user)
  bofeeding29 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby5, user: baby5.user)
  bofeeding30 = Bottlefeeding.create!(start: "14:10", quantity: 120, baby: baby6, user: baby6.user)
  bofeeding32 = Bottlefeeding.create!(start: "11:15", quantity: 40, baby: baby2, user: baby2.user)
  bofeeding33 = Bottlefeeding.create!(start: "16:10", quantity: 75, baby: baby1, user: baby1.user)
  bofeeding35 = Bottlefeeding.create!(start: "17:15", quantity: 60, baby: baby5, user: baby5.user)
  bofeeding36 = Bottlefeeding.create!(start: "21:40", quantity: 40, baby: baby4, user: baby4.user)

  Baby.all.each do |baby|
    bottlefeeding = baby.bottlefeedings
    bottlefeeding.each_with_index do |feeding, index|
      feeding.update!(start_date: DateTime.now - index)
    end
    breast_feeding = baby.breast_feedings
    breast_feeding.each_with_index do |feeding, index|
      feeding.update!(start_date: DateTime.now - index )
    end
  end

  puts "Creating poooooop ^-^ "

  Diaper.create!(start_date: DateTime.now, category: "Wet", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 0.2, category: "Dry", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 1.3, category: "Dirty", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 1.5, category: "OMG", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 2.4, category: "OMG", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 2.2, category: "Clean", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 3.9, category: "OMG", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 3.3, category: "Wet", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 3.4, category: "Dirty", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 4.2, category: "Clean", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 4.5, category: "Dry", comment: "Baby clean!", baby: baby6, user: baby6.user)
  Diaper.create!(start_date: DateTime.now - 5.1, category: "Wet", comment: "Baby clean!", baby: baby6, user: baby6.user)

  Diaper.create!(start_date: DateTime.now, category: "Wet", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 2.3, category: "Dry", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 4.7, category: "Dirty", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 6.2, category: "OMG", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 8.5, category: "OMG", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 10.4, category: "Clean", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 12.2, category: "OMG", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 14.8, category: "Wet", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 16.3, category: "Dirty", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 18.4, category: "Clean", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 20.2, category: "Dry", comment: "Baby clean!", baby: baby5, user: baby5.user)
  Diaper.create!(start_date: DateTime.now - 22.5, category: "Wet", comment: "Baby clean!", baby: baby5, user: baby5.user)

  Diaper.create!(start_date: DateTime.now, category: "Wet", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 2.3, category: "Dry", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 4.6, category: "Dirty", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 6.9, category: "OMG", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 8.4, category: "OMG", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 10.5, category: "Clean", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 12.6, category: "OMG", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 14.4, category: "Wet", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 16.5, category: "Dirty", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 18.6, category: "Clean", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 20.1, category: "Dry", comment: "Baby clean!", baby: baby4, user: baby4.user)
  Diaper.create!(start_date: DateTime.now - 22.2, category: "Wet", comment: "Baby clean!", baby: baby4, user: baby4.user)

  Diaper.create!(start_date: DateTime.now, category: "Wet", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 2.4, category: "Dry", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 4.3, category: "Dirty", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 6.9, category: "OMG", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 8.2, category: "OMG", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 10.8, category: "Clean", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 12.5, category: "OMG", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 14.2, category: "Wet", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 16.1, category: "Dirty", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 13.4, category: "Clean", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 20.3, category: "Dry", comment: "Baby clean!", baby: baby3, user: baby3.user)
  Diaper.create!(start_date: DateTime.now - 22.5, category: "Wet", comment: "Baby clean!", baby: baby3, user: baby3.user)

  Diaper.create!(start_date: DateTime.now, category: "Wet", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 2.2, category: "Dry", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 4.4, category: "Dirty", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 6.3, category: "OMG", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 8.5, category: "OMG", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 10.8, category: "Clean", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 12.2, category: "OMG", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 14.7, category: "Wet", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 16.4, category: "Dirty", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 18.3, category: "Clean", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 20.5, category: "Dry", comment: "Baby clean!", baby: baby2, user: baby2.user)
  Diaper.create!(start_date: DateTime.now - 22.2, category: "Wet", comment: "Baby clean!", baby: baby2, user: baby2.user)

  Diaper.create!(start_date: DateTime.now, category: "Wet", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 2.9, category: "Dry", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 4.2, category: "Dirty", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 6.5, category: "OMG", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 8.1, category: "OMG", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 10.4, category: "Clean", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 12.7, category: "OMG", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 14.2, category: "Wet", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 16.3, category: "Dirty", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 18.5, category: "Clean", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 20.4, category: "Dry", comment: "Baby clean!", baby: baby1, user: baby1.user)
  Diaper.create!(start_date: DateTime.now - 22.2, category: "Wet", comment: "Baby clean!", baby: baby1, user: baby1.user)

  puts "Creating Sleep sessions..."

  Sleep.create!(start_date: DateTime.now, sleep_time: 15, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 2.9, sleep_time: 30, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 4.2, sleep_time: 80, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 6.5, sleep_time: 00, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 8.1, sleep_time: 20, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 10.4, sleep_time: 30, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 12.7, sleep_time: 50, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 14.2, sleep_time: 60, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 16.3, sleep_time: 10, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 18.5, sleep_time: 70, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 20.4, sleep_time: 70, baby: baby1, user: baby1.user)
  Sleep.create!(start_date: DateTime.now - 22.2, sleep_time: 30, baby: baby1, user: baby1.user)

  Sleep.create!(start_date: DateTime.now, sleep_time: 15, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 2, sleep_time: 30, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 4.3, sleep_time: 80, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 6, sleep_time: 00, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 8, sleep_time: 20, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 10, sleep_time: 30, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 12, sleep_time: 50, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 14.3, sleep_time: 60, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 16, sleep_time: 10, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 18, sleep_time: 70, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 20, sleep_time: 70, baby: baby2, user: baby2.user)
  Sleep.create!(start_date: DateTime.now - 22, sleep_time: 30, baby: baby2, user: baby2.user)

  Sleep.create!(start_date: DateTime.now, sleep_time: 15, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 2, sleep_time: 30, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 4, sleep_time: 80, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 6, sleep_time: 00, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 8.3, sleep_time: 20, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 10, sleep_time: 30, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 12, sleep_time: 50, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 14, sleep_time: 60, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 16, sleep_time: 10, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 18, sleep_time: 70, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 20.3, sleep_time: 70, baby: baby3, user: baby3.user)
  Sleep.create!(start_date: DateTime.now - 22, sleep_time: 30, baby: baby3, user: baby3.user)

  Sleep.create!(start_date: DateTime.now, sleep_time: 15, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 2, sleep_time: 30, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 4, sleep_time: 80, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 6, sleep_time: 00, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 8, sleep_time: 20, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 10, sleep_time: 30, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 12, sleep_time: 50, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 14, sleep_time: 60, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 16, sleep_time: 10, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 18, sleep_time: 70, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 20, sleep_time: 70, baby: baby4, user: baby4.user)
  Sleep.create!(start_date: DateTime.now - 22, sleep_time: 30, baby: baby4, user: baby4.user)

  Sleep.create!(start_date: DateTime.now, sleep_time: 15, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 2, sleep_time: 30, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 4, sleep_time: 80, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 6, sleep_time: 00, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 8, sleep_time: 20, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 10, sleep_time: 30, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 12, sleep_time: 50, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 14, sleep_time: 60, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 16, sleep_time: 10, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 18, sleep_time: 70, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 20, sleep_time: 70, baby: baby5, user: baby5.user)
  Sleep.create!(start_date: DateTime.now - 22, sleep_time: 30, baby: baby5, user: baby5.user)

  Sleep.create!(start_date: DateTime.now, sleep_time: 15, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 2, sleep_time: 30, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 4, sleep_time: 80, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 6, sleep_time: 00, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 8, sleep_time: 20, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 10, sleep_time: 30, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 12, sleep_time: 50, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 14, sleep_time: 60, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 16, sleep_time: 10, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 18, sleep_time: 70, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 20, sleep_time: 70, baby: baby6, user: baby6.user)
  Sleep.create!(start_date: DateTime.now - 22, sleep_time: 30, baby: baby6, user: baby6.user)

  puts "Seeds created!"







