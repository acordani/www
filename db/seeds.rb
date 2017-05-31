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

Client.create(firstname:'john', lastname:'lassere', mail:'johnl@sfr.fr', skype:'johnl', website:'johnl.fr', job:'informaticien')
Client.create(firstname:'raoul', lastname:'lapoigne', mail:'raoull@sfr.fr', skype:'raoullapoigne', website:'raoullapoigne.fr', job:'ostheopathe')
Client.create(firstname:'elise', lastname:'lucet', mail:'elisel@gmail.com', skype:'eliselucet', website:'eliselucet.fr', job:'journaliste')