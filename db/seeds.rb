# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all
# ProductCategory.destroy_all

# category_list = [
#   ["Allergies"],
#   ["Sleep Aid"],
#   ["Pain Relief"],
#   ["Indegestion"]
# ]

# category_list.each do |name|
#   Category.create!(name: name)
# end

product_list = [
  ["0000001", "Tylenol", "4.99", "1", "Tylenol is a pain reliever and a fever reducer. Tylenol is used to treat many conditions such as headache, muscle aches, arthritis, backache, toothaches, sore throats, colds, flu, and fevers.", "Pain Relief", "5000", "false"],
  ["0000002", "Advil", "4.99", "1", "Advil is used to relieve pain from various conditions such as headache, dental pain, menstrual cramps, muscle aches, or arthritis.", "Pain Relief", "5000", "false"],
  ["0000003", "Pepto Bismol", "11.99", "12", "Nausea, heartburn, indigestion, upset stomach, and diarrhea.", "Indegestion", "179", "false"],
  ["0000004", "Reactine", "18.99", "1", "Say NO to allergies", "Allergies", "5652", "false"],
  ["0000005", "Claritin", "17.99", "2", "Claritin Clear BABY", "Allergies", "7", "false"],
  ["0000006", "Ceterizine", "9.99", "1", "It's generic, it does the exact same thing but it's cheaper", "Allergies", "99", "1", "false"],
  ["0000007", "Gravol", "9.99", "5", "Please don't abuse this", "Sleep Aid", "51", "2", "false"],
  ["0000008", "Melatonin", "8.99", "3", "Sleep like a baby", "Sleep Aid", "999", "false"],
  ["0000009", "Aleve", "9.99", "1", "It helps with your allergies", "Allergies", "789", "false"],
  ["00000010", "Midol", "5.99", "5", "Live Life M-Powered", "Pain Relief", "785", "false"]
]

product_list.each do |sku, name, price, weight, description, category_name, stock, on_sale|
  category = Category.find_or_create_by(name: category_name)
  Product.create!(
    sku:         sku,
    name:        name,
    price:       price,
    weight:      weight,
    description: description,
    stock:       stock,
    category:    category,
    on_sale:     on_sale
  )
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?