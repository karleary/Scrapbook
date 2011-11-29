# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pictures = Picture.create([{id:1, name:'Wedding'}, {id:2, name:'Rothenburg'},{id:3, name:'Beths Birthday'}])
Tags = Tag.create([{id:1, name:'Germany'}, {id:2, name:'Birthday'}, {id:3, name:'Leary Family'}, {id:4, name:'Vivian Family'}])
TagPictures = TagPicture.create([{tag_id:3, picture_id:1}, {tag_id:3,picture_id:2}, {tag_id:4,picture_id:2}])
