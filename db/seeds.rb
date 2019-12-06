  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


  Baby.destroy_all
  CareTaking.destroy_all
  Bottlefeeding.destroy_all
  BreastFeeding.destroy_all
  Sleep.destroy_all
  User.destroy_all

  puts "Former seeds destroyed"
  puts 'Creating new Users...'

  user1 = User.create!(email: "grandma@email.com", password: "123456", name: "GrandMa")
  user2 = User.create!(email: "aurelie@email.com", password: "123456", name: "MyLover" )
  user3 = User.create!(email: "athena@email.com", password: "123456", name: "Mummy")
  user4 = User.create!(email: "aunt@email.com", password: "123456", name: "Aunt Gemma")
  user5 = User.create!(email: "grandpa@email.com", password: "123456", name: "GrandPa")
  user6 = User.create!(email: "adam@email.com", password: "123456", name: "Babysiter")

  puts 'Creating new Babies...'

  baby1 = Baby.create!(name: "Louis", birthdate: "01/02/2010", user: user1)
  baby2 = Baby.create!(name: "Marie", birthdate: "10/03/2016", user: user1)

  baby3 = Baby.create!(name: "Gédéon", birthdate: "01/02/2010", user: user2)
  baby4 = Baby.create!(name: "Clémentine", birthdate: "01/02/2010", user: user2)

  baby5 = Baby.create!(name: "Zoé", birthdate: "26/02/2015",user: user3)
  baby6 = Baby.create!(name: "Baltazar", birthdate: "01/05/2018", user: user3)

  puts 'Creating new Caretakers...'

  CareTaking.create!(baby: baby1, user: user2, email: user2.email, name: user2.name)
  CareTaking.create!(baby: baby5, user: user1, email: user1.email, name: user1.name)
  CareTaking.create!(baby: baby5, user: user2, email: user2.email, name: user2.name)
  CareTaking.create!(baby: baby3, user: user1, email: user1.email, name: user1.name)
  CareTaking.create!(baby: baby3, user: user4, email: user4.email, name: user4.name)
  CareTaking.create!(baby: baby1, user: user4, email: user4.email, name: user4.name)
  CareTaking.create!(baby: baby5, user: user4, email: user4.email, name: user4.name)
  CareTaking.create!(baby: baby1, user: user5, email: user5.email, name: user5.name)
  CareTaking.create!(baby: baby5, user: user5, email: user5.email, name: user5.name)
  CareTaking.create!(baby: baby3, user: user5, email: user5.email, name: user5.name)

  puts 'Creating new Breastfeedings...'

  100.times { BreastFeeding.create!(start_date: DateTime.now - rand(0.21...60), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby6, user: baby6.user) }
  100.times { BreastFeeding.create!(start_date: DateTime.now - rand(0.21...60), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby5, user: baby5.user) }
  100.times { BreastFeeding.create!(start_date: DateTime.now - rand(0.21...60), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby4, user: baby4.user) }
  100.times { BreastFeeding.create!(start_date: DateTime.now - rand(0.21...60), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby3, user: baby3.user) }
  100.times { BreastFeeding.create!(start_date: DateTime.now - rand(0.21...60), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby2, user: baby2.user) }
  100.times { BreastFeeding.create!(start_date: DateTime.now - rand(0.21...60), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby1, user: baby1.user) }

  # 100.times {BreastFeeding.create!(start_date: DateTime.now - rand(1...50), duration_minutes: rand(10..50),  breast_side: [:L, :R].sample, baby: baby5, user: baby5.user)}


  puts 'Creating new Feedings(Bottlefeeding)...'


  100.times {Bottlefeeding.create!(start_date: DateTime.now - rand(0.21...60), quantity: rand(10..120),  baby: baby1, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Bottlefeeding.create!(start_date: DateTime.now - rand(0.21...60), quantity: rand(10..120),  baby: baby2, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Bottlefeeding.create!(start_date: DateTime.now - rand(0.21...60), quantity: rand(10..120),  baby: baby3, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Bottlefeeding.create!(start_date: DateTime.now - rand(0.21...60), quantity: rand(10..120),  baby: baby4, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Bottlefeeding.create!(start_date: DateTime.now - rand(0.21...60), quantity: rand(10..120),  baby: baby5, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Bottlefeeding.create!(start_date: DateTime.now - rand(0.21...60), quantity: rand(10..120),  baby: baby6, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}


  puts "Creating poooooop ^-^ "

# for baby1
  100.times { Diaper.create!(start_date: DateTime.now - rand(0.21...60),
            category: ["Wet", "Dry", "Dirty", "OMG", "Wet + Dirty", "Clean"].sample,
            comment: ["Baby clean!", "Yeurk!", "-", "Sick"].sample, baby: baby1,
            user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)
            }
# for baby2
  100.times { Diaper.create!(start_date: DateTime.now - rand(0.21...60),
            category: ["Wet", "Dry", "Dirty", "OMG", "Wet + Dirty", "Clean"].sample,
            comment: ["Baby clean!", "Yeurk!", "-", "Sick"].sample, baby: baby2,
            user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)
            }
# for baby3
  100.times { Diaper.create!(start_date: DateTime.now - rand(0.21...60),
            category: ["Wet", "Dry", "Dirty", "OMG", "Wet + Dirty", "Clean"].sample,
            comment: ["Baby clean!", "Yeurk!", "-", "Sick"].sample,
            baby: baby3, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)
            }
# for baby4
  100.times { Diaper.create!(start_date: DateTime.now - rand(0.21...60),
            category: ["Wet", "Dry", "Dirty", "OMG", "Wet + Dirty", "Clean"].sample,
            comment: ["Baby clean!", "Yeurk!", "-", "Sick"].sample,
            baby: baby4, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)
            }
# for baby5
  100.times { Diaper.create!(start_date: DateTime.now - rand(0.21...60),
            category: ["Wet", "Dry", "Dirty", "OMG", "Wet + Dirty", "Clean"].sample,
            comment: ["Baby clean!", "Yeurk!", "-", "Sick"].sample,
            baby: baby5, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)
            }
# for baby6
  100.times { Diaper.create!(start_date: DateTime.now - rand(0.21...60),
            category: ["Wet", "Dry", "Dirty", "OMG", "Wet + Dirty", "Clean"].sample,
            comment: ["Baby clean!", "Yeurk!", "-", "Sick"].sample, baby: baby6,
            user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)
            }

  puts "Creating new Sleep sessions..."

  100.times {Sleep.create!(start_date: DateTime.now - rand(0.21...60), sleep_time: rand(15..60), baby: baby1, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Sleep.create!(start_date: DateTime.now - rand(0.21...60), sleep_time: rand(15..60), baby: baby2, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Sleep.create!(start_date: DateTime.now - rand(0.21...60), sleep_time: rand(15..60), baby: baby3, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Sleep.create!(start_date: DateTime.now - rand(0.21...60), sleep_time: rand(15..60), baby: baby4, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Sleep.create!(start_date: DateTime.now - rand(0.21...60), sleep_time: rand(15..60), baby: baby5, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}
  100.times {Sleep.create!(start_date: DateTime.now - rand(0.21...60), sleep_time: rand(15..60), baby: baby6, user: [baby1.user, baby3.user, baby5.user, user4, user5].sample)}


  puts "Seeds created!"







