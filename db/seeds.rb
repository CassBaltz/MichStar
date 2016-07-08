# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

benu = Restaurant.create(
  name: "Benu",
  mich_review: "Don't miss the street views directly into this kitchen as you enter-the chefs here are preparing a series of masterpieces. Outside in the courtyard, benches are exactly the kind of place to linger, after a regal repast. The interior is awash in earthy colors, sleek banquettes, and oversized cushions. The slate-gray dining room is serene with clean lines drawing the eye across the meticulous design, while the staff is impressively warm and relaxed for a restaurant of this caliber. Chef Corey Lee's nightly tasting menu is a unique marriage of contemporary American and Korean influences and Master Sommelier Yoon Ha oversees an exceptional beverage program. Dishes promise a fascinating interplay of ingredients, as seen in the potato salad crowned with mirin-glazed anchovies and spirals of mild red chili. Find subtlety and elegance in raw fluke seasoned with sesame oil and sandwiched between crisp sesame leaves; while sea bream served in an aged tangerine jus with black trumpet mushrooms is royally decadent. Rich, marbled beef reaches a new height of excellence when prepared with charred scallion sauce, ramps, and meaty morels. Finally, a striking dessert of luscious coconut cream with strawberry gelée, tapioca pearls, and topped with a thin disc of meringue, will have you seeing stars.",
  head_chef: "Corey Lee",
  stars: 3,
  cuisine: "Contemporary",
  website: "http://www.benusf.com",
  address: "22 Hawthorne St., San Francisco 94105",
  phone: "1.415.685.4860",
  lat: 37.785672,
  lon: -122.399036,
)

french_laundry = Restaurant.create(
  name: "French Laundry",
  mich_review: "After more than 20 years of gracing every foodie's bucket list from here to Hong Kong, Thomas Keller's legendary Napa Valley destination still doesn't miss a beat-irrespective of being in the midst of change. And, what's not to love? Chef Keller pairs incredibly technical cooking with wildly fresh and seasonal ingredients in a dreamy wine country setting. It's a perfect storm of restaurant greatness-and we should all be so lucky to score a reservation here in our lifetime. Located in scenic Yountville, along a shady, bucolic, and winding road, the restaurant is the picture of countryside charm, with creeping ivy arching up its quaint stone exterior and a homey dining room set with elegant dishware. There are two seasonal, nine-course tasting menus to choose from, including a vegetarian option. Dinner might kick off with the restaurant's signature oysters, paired with gleaming white sturgeon caviar pooled in a warm sabayon studded with tapioca pearls; before moving on to golden striped bass with deconstructed deviled eggs. Other treasures include unctuous pork belly set over creamy, spiced Rancho Gordo beans; or tender veal, paired with tomato-infused béarnaise sauce and a spectacular summer corn salad bursting with cherry tomato, chanterelle mushrooms, and a basil-scented cake.",
  head_chef: "Thomas Keller",
  stars: 3,
  cuisine: "Contemporary",
  website: "http://www.frenchlaundry.com",
  address: "6640 Washington St., Yountville 94599",
  phone: "1.707.944.2380",
  lat: 38.404402,
  lon: -122.364972,
)

manresa = Restaurant.create(
  name: "Manresa",
  mich_review: "Recovered, renewed, and fresh off its hiatus, Manresa has returned from its kitchen-fire ashes like a phoenix-and it just may be better than ever. The dining room appears unchanged; it is still elegant, celebratory, and distinctively stylish. Likewise, the service team remains synchronized and welcoming. Most importantly, Chef David Kinch's superb cooking is invigorated with focused brilliance. The chef's one nightly menu is unknown until it arrives on the table as a parchment listing alphabetized ingredients. The food is at once cerebral and luxurious, yet grounded and thoroughly delicious. Each course is likely to represent a moment within a season, beginning with a selection of savory petit fours that are an illusory play on the palate. Sample red-pepper pâtes de fruits, black olive madeleines, or green-garlic panisse with Meyer lemon curd and tahini. Black cod is a surprising, clever, and cohesive dish featuring an exemplary fillet with crisped Brussels sprout leaves, tart vinegar reduction, and root purée served alongside a chestnut \"truffle\" rolled in truffle dust. Memorable desserts feature pumpkin purée with chocolate crémeux as well as sherry vinegar. And finally, don't miss those excellent sea salt-caramels offered on your way out-you might even want to take a few for the ride home!",
  head_chef: "David Kinch",
  stars: 3,
  cuisine: "Contemporary",
  website: "http://www.manresarestaurant.com",
  address: "320 Village Ln., Los Gatos 95030",
  phone: "1.408.354.4330",
  lat: 37.227395,
  lon: -121.980910,
)

restuarant_at_meadowood = Restaurant.create(
  name: "Restaurant at Meadowood",
  mich_review: "Located in a sprawling verdant resort amid mountains and vineyards, Meadowood is the peak of wine country-chic. The bar and lounge resemble a plush mountain lodge, thanks to fireplaces, vintage books, and soft leather seating. Their extraordinary dining room boasts a lovely backlit vaulted ceiling over tables made from granite and columns of Canadian redwood. Every detail conveys American beauty and grace; service is usually faultless, anticipatory, and adept. Chef Christopher Kostow's cuisine is not only stunning to behold but thoroughly delicious. Sample a ring of buttery Gwen avocado enhanced with Rancho Chimiles walnut oil and containing a perfectly chilled oyster as well as a few sea beans for exquisite crunch and flavor. Next, chunks of silky and translucent lobster are paired with crispy, sweet chestnuts and lemony purslane for a decadent study in texture, and work as a perfect foil to a simple yet sublime duck tea (a clear yet intense broth) with nothing but a few dill fronds for finish. For dessert, silken chocolate custard with a potent dark chocolate sauce, fudgy dates, and sweet roasted chocolate panettone is a hauntingly complex pleasure on a plate.",
  head_chef: "Christopher Kostow",
  stars: 3,
  cuisine: "Contemporary",
  website: "http://www.therestaurantatmeadowood.com",
  address: "900 Meadowood Ln., St. Helena 94574",
  phone: "1.707.967.1205",
  lat: 38.522558,
  lon: -122.467478,
)

saison = Restaurant.create(
  name: "Saison",
  mich_review: "No expense has ever been spared in this massive wow-inducing space. There are enough shining copper pots to supply a village of restaurants in France; wood tables, smart chairs, and faux-fur rugs mean that someone has recently been to Scandinavia. There is also a refreshing breakdown of traditional barriers between the kitchen and dining areas-underscored by the chefs' visits to each table, personally presenting and describing dishes. Dining here is gorgeous; some find the service personalities to be pompous, while others regard them as warm and convivial. However, the blaring 80's soundtrack (if indeed that is your era) keeps the mood lively. One thing that is undeniable is the level of extraordinary skill and detail that Chef Joshua Skenes uses to craft each item on his spontaneous menu. Expect cultured butters and cream, light and infused broths, as well as the smoke of a wood-fired oven to feature prominently. Meals may highlight luscious white sturgeon caviar with crisp potatoes tourné and a dab of cultured cream. Then, sample sweet, tender lobster barely warmed over coals with a savory seaweed dressing and rich lobster-brain sauce. Dry-aged duck is grilled \"near the fire,\" served with giblet-confit ragù, wood-roasted date, a dark jus, and is absolutely delicious.",
  head_chef: "Joshua Skenes",
  stars: 3,
  cuisine: "Californian",
  website: "http://www.saisonsf.com",
  address: "178 Townsend St., San Francisco 94107",
  phone: "1.415.828.7990",
  lat: 37.779518,
  lon: -122.392252,
)

acquerello = Restaurant.create(
  name: "Acquerello",
  mich_review: "With its air of old-world sophistication, Acquerello is the kind of establishment where one dresses for dinner, which is always an occasion. The room feels embellished yet comfortable, with vaulted wood-beamed ceilings, warm terra-cotta walls, and contemporary paintings. It's the kind of place where celebrants of a certain age are happy to splurge on a white truffle-tasting menu. Each prix-fixe here promises expertise and finesse, with a carefully curated wine list to match. Count yourself lucky if your meal begins with a silky parmesan budino topped with micro-herbs and lettuces in vinaigrette, surrounded by fragrant pearls of black truffle gelée. Pastas must not be missed, such as the lobster-filled raviolo in smoked butter-lobster jus. Decadent risotti may arrive topped with Taleggio, velvety egg yolk, compressed radicchio and herbaceous nasturtium leaves to cut the richness. A perfectly pink duck breast with sunflower seed-huckleberry relish, Nantes carrots, and pink peppercorn-duck jus adds just the right note of rusticity. Save room for one of the best mignardises carts you will ever encounter, stocked with superlative house-made chocolates, macarons, pâtes de fruits, and caramels.",
  head_chef: "Suzette Gresham",
  stars: 2,
  cuisine: "Italian",
  website: "http://www.acquerello.com",
  address: "1722 Sacramento St., San Francisco 94109",
  phone: "1.415.567.5432",
  lat: 37.791595,
  lon: -122.421474,
)

atelier_crenn = Restaurant.create(
  name: "Atelier Crenn",
  mich_review: "Neutral gray and very discreet, Atelier Crenn is almost camouflaged in plain sight. Inside, gracious servers keep the dining room low key and very serene. The décor follows suit with a ceiling comprised of a backlit reed canopy, twig-like fixtures, and unadorned wood tables. This is a place for celebrants as well as serious foodies. Warm and very competent servers explain dishes with the same painstaking detail and dexterity that the kitchen uses to place carrot jerky onto its mossy twig. Chef Dominique Crenn's cooking is at once whimsical and deeply accomplished, based on elemental expressions of the earth or sea. While the idea of \"poetic culinaria\" may seem self-indulgent to some, this cuisine is undeniably authentic, deeply personal, and filled with brilliant grace notes of flavor and creativity. Expect dishes that are light yet complex, such as fluke that seems ready to melt over tarragon ice, amid droplets of creamy smoked sturgeon, sea-cucumber dashi, and pickled Asian pears. Dark and intense spot prawn broth is so deeply flavored that it seems like you are tasting shellfish for the first time. A trio of aloe gelée, purée, and snow is incomparably refreshing and herbaceous.",
  head_chef: "Dominique Crenn",
  stars: 2,
  cuisine: "Contemporary",
  website: "http://www.ateliercrenn.com",
  address: "Address 3127 Fillmore St., San Francisco 94123",
  phone: "1.415.440.0460",
  lat: 37.798334,
  lon: -122.435943,
)

baume = Restaurant.create(
  name: "Baumé",
  mich_review: "A bold orange door in an otherwise nondescript single story building along Palo Alto's main thoroughfare marks the entrance to the lovely Baumé. Do yourself a favor and enter-for Chef Bruno Chemel's progressive fine dining is truly an otherworldly culinary experience. Inside, you'll find an exquisite dining room with a pristine, modernist sensibility and that same beautiful orange hue accenting various walls and fabric room dividers. The kitchen may do only one dinner seating a night, but tables are refreshingly spaced widely for privacy and it's lovely not to be rushed. The service staff only adds to this luxurious and unhurried vibe with their warmth, knowledge, and clear enthusiasm for Chef Chemel's food. Beginning with sublime and seasonal ingredients, the master creator takes his flavor profiles to truly profound levels. Dinner might include a gorgeous little plate of golden Osetra caviar spooned over a creamy panna cotta humming with fennel and tart kiwi; or a bright and perfectly poached Jidori egg yolk paired with creamy polenta, frothy sabayon, smoky meringue and kale ragout. Conclude over a sensational goat cheese-and-parsley root mousse that is studded with pretty pink peppercorns and topped with tiny little crisps of caramel.",
  head_chef: "Bruno Chemel",
  stars: 2,
  cuisine: "Contemporary",
  website: "http://www.baumerestaurant.com",
  address: "201 S. California Ave., Palo Alto 94306",
  phone: "1.650.328.8899",
  lat: 37.428181,
  lon: -122.143046,
)

campton_place = Restaurant.create(
  name: "Campton Place",
  mich_review: "With its sleek booths, wall-to-wall windows, plush carpeting, and pristinely robed tables, this elegant oasis in the Taj Hotel is as formal and traditional as one would expect; even the dining room's pièce de résistance, a blown-glass floral chandelier that hangs from the coffered ceiling, is elegant and sophisticated An odd mix of gourmands and hotel guests keep the vibe desultory inside, but by greeting each diner as they enter, the staff maintains a sense of refinery that is true to this contemporary Cal-Indian menu. Courses, which arrive on charcoal-glazed ceramics, allude to Indian spices but honor outstanding skill and taste over drama or novelty. Lighter dishes cover all bases of flavor and texture as witnessed in a modern expression of chaat (carrots, peas, and tamarind tossed in \"whey shorva\" dotted with chutney); or spicy, pan-fried potato-corn tikkis lodged atop a bright salad of plum brunoise and cilantro. Dollops of tangy lime curd expertly complete this sublime, seasonal plate, while charred potatoes and leeks accentuate a decadent butter-poached Maine lobster. Just as slow-cooked meat dishes have an elegant undertone of garam masala, for dessert, tandoori strawberries with lemon ice cream may under-promise on paper but will over-deliver on taste and flavor.",
  head_chef: "Srijith Gopinathan",
  stars: 2,
  cuisine: "Indian",
  website: "http://www.camptonplacesf.com",
  address: "340 Stockton St., San Francisco 94108",
  phone: "1.415.955.5555",
  lat: 37.789126,
  lon: -122.406691,
)

coi = Restaurant.create(
  name: "Coi",
  mich_review: "Even on the eve of its tenth anniversary, Coi manages to stay as fresh as the days when it first opened its doors. Its second decade is sure to be exciting as Daniel Patterson hands off his kitchen to a new and very talented brigade. The moniker translates to \"silent\" or \"quiet\"-and indeed the restaurant owns a serene, Zen-like atmosphere with branches arching across the foyer; soft grey upholstered banquettes; bare wooden tables; supple brown leather chairs; and beautiful, conversation-worthy earthenware dishes. Service here is warm, refined and extraordinarily well trained-with a nearby sommelier at the ready with an impeccable wine list and a smile. Waiters quietly attend to every need of the stylish crowd. The kitchen's contemporary cooking is a joy to experience and the multi-course tasting menu showcases both incredible technique and pristine seasonal ingredients. Picture thinly sliced geoduck sashimi paired with crunchy, seasoned cucumber, shavings of radish, and violet-hued edible flowers. Then a bright, chilled English pea soup is poured over creamy buttermilk, soft yellow nasturtium and whole spring peas picked at their peak. Tender, bite-sized slices of aged duck find perfect company in vibrant spring greens, sprouted wheat berry, and a rich duck broth.",
  head_chef: "Daniel Patterson",
  stars: 2,
  cuisine: "Contemporary",
  website: "http://www.coirestaurant.com",
  address: "373 Broadway, San Francisco 94133",
  phone: "1.415.393.9000",
  lat: 37.798112,
  lon: -122.403397,
)

commis = Restaurant.create(
  name: "Commis",
  mich_review: "Chef/owner James Syhabout may be keeping busy outside of Commis at his other popular restaurants, but this sparse Oakland original is still turning out elegant and creatively complex seasonal dishes to a packed house every night. Tucked into colorful, boutique-strewn Piedmont Avenue, this dining space is a long, clean, minimalist number with a smattering of tables up front; intimate banquette seating in the back; and a lively counter overlooking the humming kitchen. Soft hip-hop music and a vibrant service staff set the mood-cool and contemporary; relaxed but serious. In the kitchen, Chef Syhabout pairs well-sourced, local ingredients with precise technique to create his sophisticated nightly tasting, which continues to be exciting even for jaded gourmands. Dinner might unveil a plate of silky scallops paired with tangy crème fraîche, poached asparagus, and charred lemon granité; warm, roasted abalone with artichoke heart, fried artichoke slivers, and chicken sabayon; or a chilled fava bean soup laced with tarragon-infused crème fraîche, green tomato gelée, and smoked trout roe. A perfectly poached halibut confit with spring pea \"porridge\" and ginger foam is another beautifully composed plate that reflects the kitchen's attention to detail.",
  head_chef: "James Syhabout",
  stars: 2,
  cuisine: "Contemporary",
  website: "http://www.commisrestaurant.com/",
  address: "3859 Piedmont Ave., Oakland 94611",
  phone: "1.510.653.3902",
  lat: 37.824736,
  lon: -122.254927,
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467665074/MichStar/commis-restaurant-photo_izzuwe.jpg"
)

quince = Restaurant.create(
  name: "Quince",
  mich_review: "Chef/owner James Syhabout may be keeping busy outside of Commis at his other popular restaurants, but this sparse Oakland original is still turning out elegant and creatively complex seasonal dishes to a packed house every night. Tucked into colorful, boutique-strewn Piedmont Avenue, this dining space is a long, clean, minimalist number with a smattering of tables up front; intimate banquette seating in the back; and a lively counter overlooking the humming kitchen. Soft hip-hop music and a vibrant service staff set the mood-cool and contemporary; relaxed but serious. In the kitchen, Chef Syhabout pairs well-sourced, local ingredients with precise technique to create his sophisticated nightly tasting, which continues to be exciting even for jaded gourmands. Dinner might unveil a plate of silky scallops paired with tangy crème fraîche, poached asparagus, and charred lemon granité; warm, roasted abalone with artichoke heart, fried artichoke slivers, and chicken sabayon; or a chilled fava bean soup laced with tarragon-infused crème fraîche, green tomato gelée, and smoked trout roe. A perfectly poached halibut confit with spring pea \"porridge\" and ginger foam is another beautifully composed plate that reflects the kitchen's attention to detail.",
  head_chef: "Michael Tusk",
  stars: 2,
  cuisine: "Italian",
  website: "http://www.quincerestaurant.com",
  address: "470 Pacific Ave., San Francisco 94133",
  phone: "1.415.775.8500",
  lat: 37.797512,
  lon: -122.403337,
)

user0 = User.new(name: "Jane", email: "guest@gmail.com", password: "password")
user1 = User.new(name: "Pam", email: "pam@gmail.com", password: "password")
user2 = User.new(name: "Joe", email: "joe@gmail.com", password: "password")
user3 = User.new(name: "Sally", email: "sally@gmail.com", password: "password")
user4 = User.new(name: "Ashley", email: "ashley@gmail.com", password: "password")
user5 = User.new(name: "Sarah", email: "sarah@gmail.com", password: "password")
user6 = User.new(name: "Mike", email: "mike@gmail.com", password: "password")

user0.save
user1.save
user2.save
user3.save
user4.save
user5.save
user6.save

review1 = Review.new(rating: 2, rest_id: 1, user_id: 1, content: "first review")
review2 = Review.new(rating: 2, rest_id: 1, user_id: 1, content: "first review")

review1.save
review2.save

[benu, french_laundry, manresa, restuarant_at_meadowood, saison, acquerello, atelier_crenn, baume, campton_place, coi, commis, quince].each do |restaurant|
  [2, 4, 6].each do |seats|
    [2016].each do |year|
      [7, 8].each do |month|
        (1..30).to_a.each do |day|
          (19..21).to_a.each do |hour|
            [0, 30].each do |min|
              next if rand(2) == 1
              ReservationOption.create(
              rest_id: restaurant.id,
              reservation_time: DateTime.new(year, month, day, hour, min),
              table_size: seats,
              reserved: false
              )
            end
          end
        end
      end
    end
  end
end
