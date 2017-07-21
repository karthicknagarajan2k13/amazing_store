# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Products Type'
	ProductType.create(name: 'Creams & gels')
	ProductType.create(name: 'Patches')
	ProductType.create(name: 'Emulsions')
	ProductType.create(name: 'Toners')
	ProductType.create(name: 'Face cleansing')
	ProductType.create(name: 'Make up removal')
	ProductType.create(name: 'Scrubs')
	ProductType.create(name: 'Peeling')
	ProductType.create(name: 'Masks')
puts 'Products Type end'
puts 'Products'

	@product = Product.create(name: 'Ponds Age Miracle Cell ReGen Day Cream', descrption: "Pave your way to younger looking skin with this Pond's Age Miracle Cell ReGen Day Cream as it visibly reduces fine lines and wrinkles to provide strong and firm skin.")
	file  = 'assets/image1.jpg'
	@product.image = file
	@product.amount = 18
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Olay Total Effects 7 in 1 Anti Ageing Day Cream', descrption: "A brainchild of a chemist, Olay was born out of love and was Graham Wulff’s gift to his doting wife. Graham wanted to create a new beauty product that would leave his wife’s skin nourished and moisturized without leaving a greasy feel.")
	file  = 'assets/image2.jpg'
	@product.image = file
	@product.amount = 12
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Chandni Whitening Cream  (30 g)', descrption: "Chandni Whitening Cream is used to get rid of dark marks,color blotches and aging spot,dark lines associated with aging,wrinkles and laugh lines. The darkness of tried looking circle around eyes,frozen bump marks,and dark shadows are also been vanished.")
	file  = 'assets/image3.jpg'
	@product.image = file
	@product.amount = 24
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Bright Future India Goree Day & Night Cream', descrption: "Fairness, Skin Brightening, Spot Removal, Blemish Removal, Skin Lightening, Skin Whitening.")
	file  = 'assets/image4.jpg'
	@product.image = file
	@product.amount = 56
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Amway Attitude Be Bright Day Cream  (50 g)', descrption: "Getting ready for a brunch with your girl friends will now be a quick and effortless affair, with this Attitude Be Bright day cream from Amway giving your skin a natural glow.")
	file  = 'assets/image5.jpg'
	@product.image = file
	@product.amount = 10
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Oriflame Sweden Essentials Fairness 5-in-1 Face Cream', descrption: "A unique multi-benefit face cream to lighten, hydrate, nurture, protect and smoothen your skin for younger look. Contains 5 vitamins and naturally brightening Mulberry extract.")
	file  = 'assets/image6.jpg'
	@product.image = file
	@product.amount = 19
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Oriflame Sweden Even Out Day Cream', descrption: "A unique multi-benefit face cream to lighten, hydrate, nurture, protect and smoothen your skin for younger look.")
	file  = 'assets/image7.jpg'
	@product.image = file
	@product.amount = 45
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Lotus Herbals Phyto Rx Whitening and Brightening Night Cream', descrption: "Night Usage Cream For Radiance & Glow, Skin Brightening, Skin Whitening.")
	file  = 'assets/image8.jpg'
	@product.image = file
	@product.amount = 23
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Lotus Herbals White Glow Skin Whitening And Brightening Gel Cream', descrption: "Day Usage Gel For Skin Brightening, Skin Whitening.")
	file  = 'assets/image9.jpg'
	@product.image = file
	@product.amount = 41
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Olay Regenerist Micro-sculpting Cream  (50 g)', descrption: "A brainchild of a chemist, Olay was born out of love and was Graham Wulff’s gift to his doting wife. Graham wanted to create a new beauty product that would leave his wife’s skin nourished and moisturized without leaving a greasy feel.")
	file  = 'assets/image10.jpg'
	@product.image = file
	@product.amount = 17
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Vita Glow Skin Whitening, Fairness Night Cream  (30 g)', descrption: "Vita Glow Skin Whitening, Fairness Night Cream – 30gm: Vita Glow Skin Whitening Night Cream For RADIENT BRIGHTENING & BEAUTIFUL SKIN. • Vita Glow Night Cream Removes the layer of the dust and makes your skin look fresh and Healthy. • Vita Glow Night Cream is beneficiary for men and women.")
	file  = 'assets/image11.jpg'
	@product.image = file
	@product.amount = 32
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

	@product = Product.create(name: 'Garnier Wrinkle Lift Anti-Ageing Cream  (18 g)', descrption: "You can have it all; the perfect career, the kind of life you always dreamed of with loved ones close and happiness all around but there could be damage. We are talking about skin damage and you have the perfect solution in the form of the Garnier Wrinkle Lift Anti-Ageing Cream.")
	file  = 'assets/image12.jpg'
	@product.image = file
	@product.amount = 40
	@product.product_type_id = ProductType.find_by_name('Creams & gels').id
	@product.save

puts 'Products End'