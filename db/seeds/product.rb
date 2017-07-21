puts 'Products Type'
	ProductType.find_or_create_by(name: 'Creams & gels')
	ProductType.find_or_create_by(name: 'Patches')
	ProductType.find_or_create_by(name: 'Emulsions')
	ProductType.find_or_create_by(name: 'Toners')
	ProductType.find_or_create_by(name: 'Face cleansing')
	ProductType.find_or_create_by(name: 'Make up removal')
	ProductType.find_or_create_by(name: 'Scrubs')
	ProductType.find_or_create_by(name: 'Peeling')
	ProductType.find_or_create_by(name: 'Masks')
puts 'Products Type end'
puts 'Products'

	@product = Product.find_or_create_by(name: 'Ponds Age Miracle Cell ReGen Day Cream', descrption: "Pave your way to younger looking skin with this Pond's Age Miracle Cell ReGen Day Cream as it visibly reduces fine lines and wrinkles to provide strong and firm skin.", image: 'assets/image1.jpg', amount: 18, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Olay Total Effects 7 in 1 Anti Ageing Day Cream', descrption: "A brainchild of a chemist, Olay was born out of love and was Graham Wulff’s gift to his doting wife. Graham wanted to create a new beauty product that would leave his wife’s skin nourished and moisturized without leaving a greasy feel.", image: 'assets/image2.jpg', amount: 12, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Chandni Whitening Cream  (30 g)', descrption: "Chandni Whitening Cream is used to get rid of dark marks,color blotches and aging spot,dark lines associated with aging,wrinkles and laugh lines. The darkness of tried looking circle around eyes,frozen bump marks,and dark shadows are also been vanished.", image: 'assets/image3.jpg', amount: 24, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Bright Future India Goree Day & Night Cream', descrption: "Fairness, Skin Brightening, Spot Removal, Blemish Removal, Skin Lightening, Skin Whitening.", image: 'assets/image4.jpg', amount: 56, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Amway Attitude Be Bright Day Cream  (50 g)', descrption: "Getting ready for a brunch with your girl friends will now be a quick and effortless affair, with this Attitude Be Bright day cream from Amway giving your skin a natural glow.", image: 'assets/image5.jpg', amount:10, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Oriflame Sweden Essentials Fairness 5-in-1 Face Cream', descrption: "A unique multi-benefit face cream to lighten, hydrate, nurture, protect and smoothen your skin for younger look. Contains 5 vitamins and naturally brightening Mulberry extract.", image: 'assets/image6.jpg', amount:19, product_type_id: ProductType.find_by_name('Creams & gels').id)
	
	@product = Product.find_or_create_by(name: 'Oriflame Sweden Even Out Day Cream', descrption: "A unique multi-benefit face cream to lighten, hydrate, nurture, protect and smoothen your skin for younger look.", image: 'assets/image7.jpg', amount: 45, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Lotus Herbals Phyto Rx Whitening and Brightening Night Cream', descrption: "Night Usage Cream For Radiance & Glow, Skin Brightening, Skin Whitening.", image: 'assets/image8.jpg', amount: 23, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Lotus Herbals White Glow Skin Whitening And Brightening Gel Cream', descrption: "Day Usage Gel For Skin Brightening, Skin Whitening.", image: 'assets/image9.jpg', amount: 41, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Olay Regenerist Micro-sculpting Cream  (50 g)', descrption: "A brainchild of a chemist, Olay was born out of love and was Graham Wulff’s gift to his doting wife. Graham wanted to create a new beauty product that would leave his wife’s skin nourished and moisturized without leaving a greasy feel.", image: 'assets/image10.jpg', amount: 17, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Vita Glow Skin Whitening, Fairness Night Cream  (30 g)', descrption: "Vita Glow Skin Whitening, Fairness Night Cream – 30gm: Vita Glow Skin Whitening Night Cream For RADIENT BRIGHTENING & BEAUTIFUL SKIN. • Vita Glow Night Cream Removes the layer of the dust and makes your skin look fresh and Healthy. • Vita Glow Night Cream is beneficiary for men and women.", image: 'assets/image11.jpg', amount: 32, product_type_id: ProductType.find_by_name('Creams & gels').id)

	@product = Product.find_or_create_by(name: 'Garnier Wrinkle Lift Anti-Ageing Cream  (18 g)', descrption: "You can have it all; the perfect career, the kind of life you always dreamed of with loved ones close and happiness all around but there could be damage. We are talking about skin damage and you have the perfect solution in the form of the Garnier Wrinkle Lift Anti-Ageing Cream.", image: 'assets/image12.jpg', amount: 40, product_type_id: ProductType.find_by_name('Creams & gels').id)
	
puts 'Products End'