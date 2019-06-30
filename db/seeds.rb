# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(pan: 2, card_holder_name: 2, expiry_date: 2, security_code: 2, reserved_balance: 0, total_balance: 100000)
User.create(pan: 3, card_holder_name: 3, expiry_date: 3, security_code: 3, reserved_balance: 0, total_balance: 200000)
User.create(pan: 4, card_holder_name: 4, expiry_date: 4, security_code: 4, reserved_balance: 0, total_balance: 1000)
