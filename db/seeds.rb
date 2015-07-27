# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Container.create(name: 'Śruby, gwoździe i nakrętki', description: 'Kontener na tonę gwoździ')
Container.create(name: 'Tranzystory', description: 'Bramki, zwory, tranzystory')
Item.create(name: 'Nakrętka', quantity: 124, container_id: 1)
Item.create(name: 'Śruba 12mm', quantity: 55, container_id: 1)
Item.create(name: 'Gwóźdź', quantity: 2190, container_id: 1)
Item.create(name: '2N3055G NPN', quantity: 12, container_id: 2)
Item.create(name: '2N5322 NPN', quantity: 12, container_id: 2)
Item.create(name: '2N3055G PNP', quantity: 12, container_id: 2)
