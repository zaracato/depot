# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Order.delete_all
LineItem.delete_all
Product.delete_all

Product.create(
    title:'Programming Ruby 1.9',
    description:
        %{
         Ruby is the fastest growing and most exciting dynamic language
out there. If you need to get working programs delivered fast,
you should add Ruby to your toolbox.
</p>},
image_url: 'ruby.jpg',
price: 49.95
)
PaymentType.delete_all
PaymentType.create(:name => "Check")
PaymentType.create(:name => "Credit card")
PaymentType.create(:name => "Purchase order")
