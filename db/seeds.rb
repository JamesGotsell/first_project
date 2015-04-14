# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:

#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)


  u1 = User.create!(name:'james', email:'james@james.com', password: "password", age:29)
  u2 = User.create!(name:'alex', email:'alex@alex.com', password: "password", age: 30)
  u3 = User.create!(name:'bob', email:'bob@bob.com', password: "password", age:40)
  u4 = User.create!(name:'jack', email:'jack@jack.com', password: "password", age:55)

  s1 = u1.songs.create!(name:"boom", description:"booomting")
  s2 = Song.create!(name:"topnotch", description:"top boom", user_id:2)
  s3 = Song.create!(name:"boom1", description:"booom2", user_id:3)
  s4 = Song.create!(name:"boom3", description:"booomting4", user_id:4)

  c1 = u1.comments.create!(song_id:1, content: "not that good")
  c2 = Comment.create!(song_id:3, content: "shit", user_id:2)
  c3 = Comment.create!(song_id:2, content: "rubbish", user_id:3)
  c4= Comment.create!(song_id:4, content: "total rubbish", user_id:4)