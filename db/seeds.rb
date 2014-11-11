# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Project.create name: 'Ironhack', description: 'Ironhack is a ...'
# Project.create name: 'Time tracking app'
# Project.create name: 'Recipes', description: 'Track my favourite recipes'
# Project.create name: 'Ironhack2', description: 'Ironhack is a ...'
# Project.create name: 'Time tracking app2'
# Project.create name: 'Recipes2', description: 'Track my favourite recipes'
# Project.create name: 'Ironhack3', description: 'Ironhack is a ...'
# Project.create name: 'Time tracking app3'
# Project.create name: 'Recipes3', description: 'Track my favourite recipes'
# Project.create name: 'Ironhack4', description: 'Ironhack is a ...'
# Project.create name: 'Time tracking app4'
# Project.create name: 'Recipes4', description: 'Track my favourite recipes'

# project = Project.create name: "Project 13"

# Entry.create hours:0, minutes: 45, project_id: project.id
# Entry.create hours:3, minutes: 23, project_id: project.id

12.times do |index|
  project = Project.create name: "Project #{index + 1}",
  description: "Description for project #{index + 1}"

  Entry.create hours: index + 1, minutes: index + 1, date: Date.today, project_id: project.id
end