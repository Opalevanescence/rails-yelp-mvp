# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all if Rails.env.development?

6.times do
  names = ['danny\'s Den', 'Burger Joint', 'Hothouse Hotel', 'Bun Bun Bun',
           'Bacon Central']
  addresses = ['Allston Way', 'Birch St.', 'Whitaker', 'Oxford', 'Main St.']
  phone_numbers = ['50 90 34 25', '44 55 66 77 88', '23 45 67 89',
                   '43 54 62 43', '32 56 86 23']
  categories = %w[chinese italian japanese french belgian]

  restaurant_now = Restaurant.create!(name: names.sample,
                                      address: addresses.sample,
                                      phone_number: phone_numbers.sample,
                                      category: categories.sample)

  3.times do
    contents = ['fantastic', 'could be better', 'highly recommend',
                'never come here', 'wicked cool decor', 'bangin sauces',
                'best fries ever']
    ratings = (0..5).to_a
    Review.create!(content: contents.sample, rating: ratings.sample,
                   restaurant: restaurant_now)
  end
end
