# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@post1 = Post.create(:title => "My First post!", :author => "Sam", :content => "And here''s the content")
@post1.comments.build(:author => "troll", :content => "Here's a comment")
@post1.save 