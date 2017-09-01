# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#              firstname"
#  t.string   "lastname"
#   t.string   "mail"
#    t.string   "phone_number"
#    t.string   "portable"
#    t.string   "skype"
#    t.string   "website"
#    t.string   "facebook"
#    t.string   "linkedin"
#    t.string   "job"

# puts "Creation Clients ..."
# Client.create(firstname:'john', lastname:'lassere', mail:'johnl@sfr.fr', skype:'johnl', website:'johnl.fr', job:'informaticien')
# Client.create(firstname:'raoul', lastname:'lapoigne', mail:'raoull@sfr.fr', skype:'raoullapoigne', website:'raoullapoigne.fr', job:'ostheopathe')
# Client.create(firstname:'elise', lastname:'lucet', mail:'elisel@gmail.com', skype:'eliselucet', website:'eliselucet.fr', job:'journaliste')


city_attributes = [
	{
		name:       "94100 Saint-Maur-Des-Fossés",

	},

	{
		name:       "94210 La Varenne Saint-Hilaire"
	}
]

citysearch_attributes = [
	{
		name:       "Saint-Maur-Des-Fossés",

	}
]

neighborhood_attributes = [
	{
		name:       "Le Vieux Saint-Maur",

	},

	{
		name:       "Le Parc Saint-Maur"
	},

	{
		name:       "Champignol"
	},

	{
		name:       "La Varenne Saint-Hilaire"
	},

	{
		name:       "Les Mûriers"
	},

	{
		name:       "La Pie"
	},

	{
		name:       "Adamville"
	},

	{
		name:       "Saint-Maur Creteil"
	}
]

puts "Creation city"
city_attributes.each { |params| City.create!(params) }
puts "Creation citysearch"
citysearch_attributes.each { |params| Citysearch.create!(params) }
puts "Creation neighborhood"
neighborhood_attributes.each { |params| Neighborhood.create!(params) }


# Sample.destroy_all
sample_attributes = [
	{
		house:       "maison",
		estimation: "Estimation"

	},

	{
		house:       "demeure",
		estimation: "Evaluation"

	},

	{
		house:       "bien immobilier",
		estimation: "Expertise"

	},

	{
		house:       "appartement",
		estimation: "Estimation"
	},

	{
		house:       "home",
		estimation: "Evaluation"
	},

	{
		house:       "terrain",
		estimation: "Expertise"
	},

	{
		house:       "foyer",
		estimation: "Estimation"
	},

	{
		house:       "logement",
		estimation: "Evaluation"
	},

	{
		house:       "domicile",
		estimation: "Expertise"
	},

	{
		house:       "villa",
		estimation: "Estimation"

	},

	{
		house:       "chez-vous",
		estimation: "Evaluation"
	}

]



puts "Creation sample"
sample_attributes.each { |params| Sample.create!(params) }

