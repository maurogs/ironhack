# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

o = Challenge.create(name: 'First Challenge',
				content: 'The first challenge. 
								The first challenge.
								The first challenge.
								The first challenge.
								The first challenge.
								The first challenge.
								The first challenge.
								The first challenge.
								The first challenge.
								The first challenge.')


p = Challenge.create(name: 'Second Challenge',
				content: 'The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge. 
								The second challenge.')

q = Challenge.create(name: 'Third Challenge',
				content: 'The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge. 
								The third challenge.')

r = Challenge.create(name: 'Fourth Challenge',
				content: 'The fourth challenge.
								The fourth challenge.
								The fourth challenge.
								The fourth challenge.
								The fourth challenge.
								The fourth challenge.
								The fourth challenge.
								The fourth challenge.
								The fourth challenge.')

s = Challenge.create(name: 'Fifth Challenge',
				content: 'The fifth challenge.
								The fifth challenge.
								The fifth challenge.
								The fifth challenge.
								The fifth challenge.
								The fifth challenge.
								The fifth challenge.
								The fifth challenge.
								The fifth challenge.')


#o.supports.create(project_id: , mail: )






