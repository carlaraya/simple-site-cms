# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.create(name: 'home', code: '<p>Change this code in the admin dashboard</p>')
SiteVar.create(title: 'Site Title', header: '<header>header here</header>', footer: '<div>footer here</div>')
