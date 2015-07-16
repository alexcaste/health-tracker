# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = User.create(first_name: 'John', last_name: 'Digweed', age: '35', weight: '165', gender: "Male", admin: true, email: 'john@johndigweed.com', password: 'asdfghjkl')
bubba = User.create(first_name: 'Bubba', last_name: 'Smith', age: '19', weight: '110', gender: "Female", admin: false, email: 'bubba@bubba.com', password: 'asdfghjkl')
Feat.create(name: 'Meditate', description: 'Sat sailently for an hour', bliss_pts: 3, creator_id: john.id)
Feat.create(name: 'Yoga', description: 'Love that child pose', bliss_pts: 2, creator_id: bubba.id)
Feat.create(name: 'Tai Chi', description: 'Move slow and breathe', bliss_pts: 10, creator_id: bubba.id)
Feat.create(name: 'DJ', description: 'Be awesome and make people dance', bliss_pts: 10, creator_id: john.id)
Obstacle.create(name: 'Lost Job', description: 'Laid off', misery_pts: 10, creator_id: bubba.id)
Obstacle.create(name: 'Argued with Spouse', description: 'I need my sammiches made for me!', misery_pts: 3, creator_id: john.id)
Obstacle.create(name: 'Constipated', description: 'Not enough fiber', misery_pts: 2, creator_id: bubba.id)
Obstacle.create(name: 'Late to Party', description: "Couldn't make my time slot", misery_pts: 4, creator_id: john.id)
