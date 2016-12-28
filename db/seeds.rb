# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating admins"
u = Admin.new(name: "Marcos Santini", email: "cardosounicamp@gmail.com", password: "1234qwerty")
u.save
puts "usuário #{u.name} salvo com sucesso !"
u = Admin.new(name: "Mauricio Santini", email: "mauriciocsantini@gmail.com", password: "1234qwerty")
u.save
puts "usuário #{u.name} salvo com sucesso !"