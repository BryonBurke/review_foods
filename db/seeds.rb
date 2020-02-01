# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# Product.destroy_all
#
# 50.times do |i|
#   Product.create!(
#     name: Faker::Food.dish,
#     cost: Faker::Number.decimal(l_digits: 2),
#     country_of_origin: Faker::Nation.nationality)
#
#     5.times do |j|
#         Review.create!(
#           author: Faker::Name.name,
#           content_body: Faker::Lorem.characters(number: 60),
#           rating: Faker::Number.between(from: 1, to: 5))
#     end
# end

class Seed

  Product.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_seed
  end

  def generate_seed
    50.times do |i|
      products = []
      product = Product.create!(
        name: Faker::Food.dish,
        cost: Faker::Number.decimal(l_digits: 2),
        country_of_origin: Faker::Nation.nationality)
        products.push(product)

        5.times do |j|
          products.each do |d|
            review = Review.create!(
              author: Faker::Name.name,
              content_body: Faker::Lorem.characters(number: 60),
              rating: Faker::Number.between(from: 1, to: 5),
              :product_id => d.id)

            end
          end
        end
      end

    end

    Seed.begin
