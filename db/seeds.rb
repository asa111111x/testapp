# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |i|
    User.create!(
        email: "user#{i + 1}@example.com",
        password: "password"
    )
end

titles = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
  ]
  
  contents = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  ]
  
  users = User.all
  100.times do |i|
    author = users.sample
    Article.create!(
      title: titles.sample,
      content: contents.sample,
      user: author
    )
  end
