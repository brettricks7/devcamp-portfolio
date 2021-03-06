# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  User.create!(
    email: "test@test.com",
    password: "asdfasd",
    password_confirmation: "asdfasd",
    name: "Admin User",
    roles: "site_admin"
    )
    
    puts "1 Admin user created"
    
    User.create!(
    email: "tes2@test.com",
    password: "asdfasd",
    password_confirmation: "asdfasd",
    name: "Regular User",
    )
  
  puts "1 regular user created"

  3.times do |topic|
    Topic.create!(
      title: "Topic #{topic}"
      )
  end
  puts "3 topics created"
  10.times do |blog|
    Blog.create!(
      title: "My Blog Post: #{blog}",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremq",
      topic_id: Topic.last.id
      )
  end
  
  5.times do |skill|
    Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 15
      )
  end
  
  puts "5 skills created"
  
  8.times do |portfolio_item|
    Portfolio.create!(
      title: "Porfolio title: #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem. ",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200" 
      )
  end
  
  
 1.times do |portfolio_item|
    Portfolio.create!(
      title: "Porfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem. ",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200" 
      )
  end
  
  puts "9 portfolio items created"
  
  3.times do |technology|
    Portfolio.last.technologies.create!(
      name:"Technology #{technology}"
    )
  end
