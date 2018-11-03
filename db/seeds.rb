# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |portfolio|
  Portfolio.create!(
          title: "Portfolio title #{portfolio}",
       subtitle: "It is a subtitle No.#{portfolio}" ,
           body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
     main_image: "http://via.placeholder.com/640x640",
    thumb_image: "http://via.placeholder.com/320x320"
  )
end

10.times do |skill|
  Skill.create!(
        skill_title:  "SKILL TITIE - #{skill}",
    percent_utilize:  skill.to_i
  )
end

3.times do |blog|
  Blog.create!(
    title: "The Truth stays inside",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero beatae sed ex aliquid culpa totam, debitis voluptate quas architecto inventore ullam accusamus fuga placeat error nostrum perspiciatis nihil quidem harum."
  )
end
