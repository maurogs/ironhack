# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
#p = Project.create(name: 'Ironwhores99', description: 'Description')
#q = Project.create(name: 'Ironwhores100', description: 'Description')
#r = Project.create(name: 'Ironwhores120', description: 'Description')
#s = Project.create(name: 'Ironwhores130', description: 'Description')
#t = Project.create(name: 'Ironwhores140', description: 'Description')

#p.entries.create(hours: 1, minutes: 45, comments: "tes un chantoisme", date:'2014-11-01')
#q.entries.create(hours: 2, minutes: 60, comments: "tes un choppeur", date: '2014-11-02')
#r.entries.create(hours: 3, minutes: 30, comments: "tes un choppoisme", date: '2014-11-03')
#s.entries.create(hours: 4, minutes: 55, comments: "tes un charlnteur", date: '2014-11-04')
#t.entries.create(hours: 10, minutes: 55, comments: "stop!", date: '2014-08-04')

#more_projects = Project.create(name: 'Ironwhoring', description: 'Description Last')
#	more_projects.each do |x|
#		x.entries.create(hours: rand(24), minutes: rand(60), comments: "tes un chantoisme", date: Date.today)
#	end

1.upto(100) do |i|
	u = Project.create(name: "Ironwhores #{i}", description: "Descripcion #{i}")
	u.entries.create(hours: 4, minutes: 44, comments: "you are #{i}")
end