# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
taylor_swift = Artist.create({
  name: "Taylor Swift",
  genre: "Pop",
  photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS6pczHMufgmGPtwBsqZxecfQ-HPcEV5UKOVV0MtIpWBuMT0Yky5A"
  })

Song.create({
  name: "22",
  year: 2013,
  artist_id: (Artist.find_by(name: "Taylor Swift")).id
  })

Artist.create({
  name: "Gorillaz",
  genre: "Hip Hop/Electronica",
  photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGT6zX0oOZTtK5Iq-ZOyu7v134CHp4xQPr3UQMKnSV6mWLyY60"
  })

Song.create({
  name: "Clint Eastwood",
  year: 2001,
  artist_id: (Artist.find_by(name: "Gorillaz")).id
  })