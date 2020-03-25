# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tag.destroy_all
Note.destroy_all


john = User.create(name: "John", user_name: "jonneez")
didi = User.create(name: "Didi", user_name: "croissant")
mike = User.create(name: "Mike", user_name: "mickey_mouse")

tag_one = Tag.create(tag_name: "important")
tag_two = Tag.create(tag_name: "now")
tag_three = Tag.create(tag_name: "later")

note_one = Note.create(title: "Some Title", description: "Here is some description", user_id: User.first.id , tag_id:Tag.first.id)

note_two = Note.create(title: "Another title", description: "Short description", user_id: User.last.id , tag_id:Tag.last.id)

note_three = Note.create(title: "Third Title", description: "a different description", user_id: User.first.id , tag_id:Tag.last.id)