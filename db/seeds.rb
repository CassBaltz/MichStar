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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978071/MichStar/benu-image_cn3bbq.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978072/MichStar/french-laundry-image_megccm.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978087/MichStar/manressa-image_fgwczk.jpg"
)

restuarant_at_meadowood = Restaurant.create(
  name: "Meadowood",
  mich_review: "Located in a sprawling verdant resort amid mountains and vineyards, Meadowood is the peak of wine country-chic. The bar and lounge resemble a plush mountain lodge, thanks to fireplaces, vintage books, and soft leather seating. Their extraordinary dining room boasts a lovely backlit vaulted ceiling over tables made from granite and columns of Canadian redwood. Every detail conveys American beauty and grace; service is usually faultless, anticipatory, and adept. Chef Christopher Kostow's cuisine is not only stunning to behold but thoroughly delicious. Sample a ring of buttery Gwen avocado enhanced with Rancho Chimiles walnut oil and containing a perfectly chilled oyster as well as a few sea beans for exquisite crunch and flavor. Next, chunks of silky and translucent lobster are paired with crispy, sweet chestnuts and lemony purslane for a decadent study in texture, and work as a perfect foil to a simple yet sublime duck tea (a clear yet intense broth) with nothing but a few dill fronds for finish. For dessert, silken chocolate custard with a potent dark chocolate sauce, fudgy dates, and sweet roasted chocolate panettone is a hauntingly complex pleasure on a plate.",
  head_chef: "Christopher Kostow",
  stars: 3,
  cuisine: "Contemporary",
  website: "http://www.therestaurantatmeadowood.com",
  address: "900 Meadowood Ln., St. Helena 94574",
  phone: "1.707.967.1205",
  lat: 38.522558,
  lon: -122.467478,
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978075/MichStar/restaurant-at-meadowood-image_faqdix.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/c_scale,w_4416/v1467978083/MichStar/saison-image_n8jmqn.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978071/MichStar/acquerello-image_vwph6z.jpg"
)

atelier_crenn = Restaurant.create(
  name: "Atelier Crenn",
  mich_review: "Neutral gray and very discreet, Atelier Crenn is almost camouflaged in plain sight. Inside, gracious servers keep the dining room low key and very serene. The décor follows suit with a ceiling comprised of a backlit reed canopy, twig-like fixtures, and unadorned wood tables. This is a place for celebrants as well as serious foodies. Warm and very competent servers explain dishes with the same painstaking detail and dexterity that the kitchen uses to place carrot jerky onto its mossy twig. Chef Dominique Crenn's cooking is at once whimsical and deeply accomplished, based on elemental expressions of the earth or sea. While the idea of \"poetic culinaria\" may seem self-indulgent to some, this cuisine is undeniably authentic, deeply personal, and filled with brilliant grace notes of flavor and creativity. Expect dishes that are light yet complex, such as fluke that seems ready to melt over tarragon ice, amid droplets of creamy smoked sturgeon, sea-cucumber dashi, and pickled Asian pears. Dark and intense spot prawn broth is so deeply flavored that it seems like you are tasting shellfish for the first time. A trio of aloe gelée, purée, and snow is incomparably refreshing and herbaceous.",
  head_chef: "Dominique Crenn",
  stars: 2,
  cuisine: "Contemporary",
  website: "http://www.ateliercrenn.com",
  address: "3127 Fillmore St., San Francisco 94123",
  phone: "1.415.440.0460",
  lat: 37.798334,
  lon: -122.435943,
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978071/MichStar/atelier-crenn-image_y1qhpl.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978071/MichStar/baume-image_pmm0qd.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978071/MichStar/campton-place-image_loypft.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978071/MichStar/coi-image_qsqvyi.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978072/MichStar/commis-image_gforuo.jpg"
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
  photo: "http://res.cloudinary.com/cassbaltz/image/upload/v1467978072/MichStar/quince-image_aybsia.jpg"
)

user0 = User.new(name: "Jane", email: "guest@gmail.com", password: "password")
user1 = User.new(name: "Pam", email: "pam@gmail.com", password: "password")
user2 = User.new(name: "Joe", email: "joe@gmail.com", password: "password")
user3 = User.new(name: "Sally", email: "sally@gmail.com", password: "password")
user4 = User.new(name: "Ashley", email: "ashley@gmail.com", password: "password")
user5 = User.new(name: "Sarah", email: "sarah@gmail.com", password: "password")
user6 = User.new(name: "Mike", email: "mike@gmail.com", password: "password")
user7 = User.new(name: "Bill", email: "bill@gmail.com", password: "password")
user8 = User.new(name: "Amanda", email: "amanda@gmail.com", password: "password")

user0.save
user1.save
user2.save
user3.save
user4.save
user5.save
user6.save
user7.save
user8.save

ary = [user0, user1, user2, user3, user4, user5, user6, user7, user8]


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

Review.create(rating: 3, rest_id: benu.id, user_id: 1, content: "$ ~ MY FIRST MICHELIN 3 STAR EXPERIENCE ~ $

I brought my boyfriend here for his birthday and for our first Michelin 3 star experience, and it was worth every penny. Reservations were made 2 months prior on Opentable and on the day of the dinner, they had customized the menu to wish my boyfriend a happy birthday.

We started our dinner at 6pm and were there for a total of 3 hours. The first few items to taste were little delectable bites, some better than others and all uniquely displayed. I'm not going to review each dish individually. Everything was amazing, even the simple bread and butter was tasty and so new to us. How can something so common that we have at almost every dinner taste exponentially better?? Because the chef's a genius. And an artist-- some items looked too pretty to eat.

I loved the atmosphere. It was quiet and bright, as in Benu's lighting fixture was so naturally bright, for the first few hours I thought the sunlight was coming in through rooftop windows before realizing they had just emulated it.

A huge shoutout to the staff-- My boyfriend was on crutches and staff was incredibly helpful in storing/fetching them for him when needed.

Dinner for two + a bottle of wine = $725")

Review.create(rating: 2, rest_id: benu.id, user_id: 3, content: "Dined here October 2015.

This was probably my favorite fine dining experience in 2015 (atera pre-Emborg comes pretty close, but that was in March). I won't bother going into each individual course, but every dish was well thought out and innovative, blending elements of traditional Asian cuisine with modern techniques and flavors. The kimchi/oyster/pork belly dish stands out in my mind to this day. Not everything was a hit, but you can appreciate the thought, precision, and skill that must have gone into making it.

Service was impeccable, as to be expected from a place of this caliber, toeing that thin line between being attentive yet not too overwhelming like some restaurants can be (looking at you Jean-Georges).")

Review.create(rating: 2, rest_id: benu.id, user_id: 6, content: "Benu, my new boo. My favorite $$$$ restaurant among a very small sample size.

My boyfriend surprised me on a random Tuesday evening with a trip to Benu, a restaurant I would pass every day on my way to my drug information rotation. Our 2/16/16 tasting menu was $248, not including the additional 20% service charge and foregoing the $185 beverage pairing. Cheaper than Saison's $398 tasting menu (priced in Aug 2015) with their $298 wine pairing.

Like any Michelin-starred restaurant, much attention is given to ambiance and service as well as to food. I won't comment much on the food as, unsurprisingly, it utilizes delightful combinations of flavor and texture, caters well to the Asian palate (best xiao long bao that has ever graced my mouth), and is definitely worth the money. However, I preferred the ambiance at Saison due to mood-lighting and the benefit that certain tables allow you to watch the chefs in the open kitchen while you dine.

The menu:
-Small delicacies (how did they know my handle was adelicacy!?)
-Thousand-year-old quail egg, potage, ginger
-Wild bamboo fungi and shoot (pew pew)
-Lobster coral xiao long bao (bless my heart. Benu wins the XLB battle, obvi, but it's not like I can order blessings like this every day boohoo)
-Sablefish, black trumpet, mustard, charred scallion
-Soybean, fermented pepper, black truffle bun
-Quail stuffed with glutinous rice, wood ear, celery
-\"Shark fin\" (faux, don't fret), crab, Jinhua ham, egg white
-Sesame leaf ice cream
-Dried apricot, osmanthus, almond (okay this was the coolest presentation of them all. Imagine a half-sphere of ice cream with apricot preserves at the top, completed coated with dabs of spiky cream. Hard to imagine? Yeah, a picture is better)

I think Benu could specialize in their xiao long bao and still make a killing.")

Review.create(rating: 3, rest_id: benu.id, user_id: 4, content: "Long overdue review of this fantastic \"Asian French Laundry\". We weren't sure what to expect, given the mixed reviews, but we were tantalized and delighted with each course. The style of food is Asian with a modern twist. Everything was artfully plated and service was impeccable. Hot teas and various infusions are actually included in the price. Most dishes were unique and delicious, which is hard to achieve. I disagree with the people who said it's \"just Asian food\". It's not. For the price, you're getting a whole experience, not just the food.

Some highlights included: caviar with winter melon porridge and chicken cream, preserved chicken egg with bacon bits and a warm piece of taro wrapped in a paper-thin shaving of black truffle. The egg yolk was liquid inside. Oyster kimchi which was creamy with some spiciness, held in a delicate crunchy shell that needed to be eaten quickly. I loved the mini eel \"taco\" with shiso leaf and lime. The shell was also super-thin and crispy, made of delicate feuille de brick pastry layers. It was plated on a folded piece of \"newsprint\", to bring back memories of street tacos. So playful and delicious!

I wasn't a huge fan of the \"shark fin\" (which is made with gelatin; no sharks were harmed), but then again, I'm not a fan of the original dish either. The more \"traditional\" things didn't seem as good as the small bites. The lobster coral xiao long bao were good, but the flavors were as expected.

Dessert wasn't the strong part of this meal. There was a apricot sauce, osmanthus, almond cake spiny porcupine-looking dessert, sesame leaf ice cream, and dried persimmon with walnut. The persimmons were the most interesting - they were hanging right outside the front door and drying for months.

The cost was $248/person, not including a 20% mandatory service charge. Beverage pairing was an additional $185. DH's parents came here when they first opened and said the whole experience has gotten much better. Overall, a fantastic experience everyone should try at least once!")

Review.create(rating: 2, rest_id: benu.id, user_id: 2, content: "I came here for a Valentine's Day meal after securing a reservation about 2 months in advance.

We were promptly seated and at first glance, I admired the minimalistic and simple decor. It was very comfortable and the servers were quite friendly. We got to chatting about their flatware and everybody was very willing to share. I dislike pretentious environments even when it's very fine dining and the ambience here suited me very much. It also isn't claustrophobic/cramped and comfortable which is important when you're sitting there for 3 hours.

The food itself was amazing! My favorite was the monkfish liver and the XLBs. Does it live up to *** M? I don't think it's quiiiite there yet. It's missing certain innovative qualities compared to others I've been to but it's definitely a satisfying meal. Would try other spots before coming back!

Our server also mentioned that they keep track of what we've eaten so each time we return the menu will be slightly different.

Bottomline: Enjoyed my evening here and left feeling fully satisfied, but will try other 3M spots before returning!")

Review.create(rating: 3, rest_id: french_laundry.id, user_id: 5, content: "We came here in May, 2014 and absolutely enjoyed our meal.  Of course, getting a reservation here and coming out to eat from DC was already a big deal, but it was certainly worth it.  Thomas Keller and his crew here know exactly what they are doing, and I have yet to have found a meal better than this one - of course I have had many which were just as great.  As we came through the blue door, we were warmly greeted and told that our table was not quite ready yet.  However, they brought us champagne and the salmon tartare cornet to begin while we waited.  Once we were sat, the server went through the menu where they let my girlfriend substitute the Oysters and Pearls with a soup from the vegeterian tasting menu since she does not like oysters (her loss though, Oysters and Pearls was amazing!!).  While all of the courses were great, the most memorable dishes were a Georges Bank Sea Scallop Poelee with poached apricots, garden radishes, and Sicilia pistachios as well as the Four Story Hill Farm Poularde with wilted arrowleaf spinach, crispy cipollini onion rings, and white corn veloute.  We also quite enjoyed the slow poached fillet of wild king salmon served with pommes puree, butter poached oregon morels, sacramento delta asparagus, and shellfish cream.

I would have given this review 5 stars, however the service wasn't exactly there.  Our server started off strong, but halfway through the meal he started to appear less and less.  We mentioned in the beginning of the meal that we were interested in a kitchen tour and he acknowledged, however, when we brought it back up at the end of the meal all we heard were excuses about why we could not go back there.  Our lunch started at 1:30PM, and we were finishing up around 4 or 4:30PM (I don't remember) and the server stated that the kitchen staff was meeting for the dinner seatings and we would have to wait quite a while.  We got the hint and gave up on the tour and just went outside to take photos. Also, other tables were offered by their servers to take home all the extra snacks and candies provided for dessert (which were delicious but unrelenting), we were not given that option.  Our food runner was considerably more friendly, and we hoped she was able to get promoted to full on server based on her great attitude alone.")

Review.create(rating: 3, rest_id: french_laundry.id, user_id: 7, content: "So I am amending my previous review.  This is by far the toughest rating I have had to come up with.  By chance the wait list paid off and was able to get into French Laundry.  The food and service were 5 stars.  Service was extremely professional as you would expect at a place of this caliber.  Food was right up our alley.

Had the gold dining experience card which I would recommend to anyone that would want wine pairings AND has a reservation already.  FYI, you should let them know in advance that you have the card.

The problem is that this was by far the worst place I have ever tried to get reservations.  The process is awful with some of the issues I had previously mentioned.

Overall I would recommend dining here if you have someone else get the reservation for you.  It does seem like 4 or 6 person groups does make it easier but is near impossible to get 2 unless receiving a tiny miracle of wait list coming thru.  Problem is that it is really difficult to plan a trip around that.

Or I would recommend Per Se in NYC if you want to go to a Thomas Keller 3 star restaurant.  Been to Per Se multiple times and the meal was as good as French Laundry and never had an issue getting in.")

Review.create(rating: 3, rest_id: french_laundry.id, user_id: 2, content: "So I am amending my previous review.  This is by far the toughest rating I have had to come up with.  By chance the wait list paid off and was able to get into French Laundry.  The food and service were 5 stars.  Service was extremely professional as you would expect at a place of this caliber.  Food was right up our alley.

Had the gold dining experience card which I would recommend to anyone that would want wine pairings AND has a reservation already.  FYI, you should let them know in advance that you have the card.

The problem is that this was by far the worst place I have ever tried to get reservations.  The process is awful with some of the issues I had previously mentioned.

Overall I would recommend dining here if you have someone else get the reservation for you.  It does seem like 4 or 6 person groups does make it easier but is near impossible to get 2 unless receiving a tiny miracle of wait list coming thru.  Problem is that it is really difficult to plan a trip around that.

Or I would recommend Per Se in NYC if you want to go to a Thomas Keller 3 star restaurant.  Been to Per Se multiple times and the meal was as good as French Laundry and never had an issue getting in.")

Review.create(rating: 2, rest_id: french_laundry.id, user_id: 4, content: "Based on others' feedback, I set my expectations low but was totally blown out of the water by the total experience.

From start to finish, service was exceptional. You really felt like the folks working here were going above and beyond to ensure you had a great dining experience.

The food was delicious. Each dish was presented beautifully, and you could tell that each ingredient served a purpose - to ensure the perfect composure of flavors and textures with each bite.

The number of dishes can get a little overwhelming. We opted to take a brief intermission after our 5th or 6th dish, and it ended up being the highlight of our meal. We got a chance to check out the kitchen that was in process of being renovated as well as the temporary kitchen. It was cool to see how everything came together and how the crew of 12-14 worked around the clock to ensure a seamless and well orchestrated dining experience.

We left with a ton of goodies - chocolates, cookies, a couple of Finesse magazines and a personalized menu (our menu came with a 'Happy Birthday Claudia' addressed on top for my birthday).

Dining here definitely exceeded my expectations and have set a new standard for fine dining.")

Review.create(rating: 3, rest_id: french_laundry.id, user_id: 1, content: "French Laundry? Worth it. This won't be a typical review.

Getting a reservation? Absolute hell. I called 7 days in a row using two phones and scored on the last day. Be persistent and don't blame the staff, it's a process.

Logistics? No valet parking, but lots of spaces on the main road right in front. The main door is in the courtyard and can be easy to miss.

Dress code? If you're a man, be a man and wear a damn blazer. It's French Laundry, and you're paying for an experience so dress yourself accordingly. Ladies know what French Laundry is and are smart enough to dress properly so I won't even go there.

Food? Epic. Pony up for the add-ons, they're worth it. Try everything. This is a pinnacle of dining and there's an army of the finest chefs working to make it unforgettable. Don't be a turd and pass up something other than for an allergy (which by the way be sure to tell them if you have an allergy!).

Wine? The wine list is unlike anything I've ever seen. Be open about your price range and what you like, and they'll help you pick a great bottle.

Closing thoughts: Tip above the amount that's included automatically. The service is amazing and they work very very hard.")

Review.create(rating: 2, rest_id: french_laundry.id, user_id: 3, content: "Perfect and beautiful food served by an army.

That's what the French Laundry affords you.

As a first timer, i was impressed by the attention to detail. That's the Michelin way.

But i was surprised to not be surprised. I found the menu familiar (thought perfectly executed) and i think i was expecting a little more innovation.

I expected more from Thomas Keller. That's my problem - not his.

I guess i just expected his food to be a little less boring and more inspiring. A table of 8 from all over the world and none of us left elevated. ")

Review.create(rating: 1, rest_id: manresa.id, user_id: 7, content: "The day that I dreamed about dining at Manresa has finally came true. The dining experience started at 8:45pm on a Saturday night and our reservation time was 9pm. I believe it was the last seating during the night. We went in just a little early so we were seated in the waiting area with a cute small fireplace. The host handed us the drink menu. During the wait, I noticed that they have displayed a wide variety of books and magazines that showcase the restaurant and other Michelin's guide and star restaurants. For a good 15 minutes, I was taking notes on restaurants I would like to try in the future - (talk about being fat, lol.)

Right around 9pm, we were lead to our table and the adventure begins. We didn't get the wine pairing, knowing me I would pass out during the meal - yea, i am a weak sauce. So the meal started off with small bites, appetizers, entrees, desserts, small bites desserts. Food was obviously amazing. Portions are small but there were a lot of courses to go through. I eventually had to start packing food from my 2nd entree and moving it home. I was full, very full. The night ended with a gift from them and a copy of the menu we had. It was a nice gesture to remembered the night we dined here and to see how their menus changes every so often. What a incredible experience and would love to revisit one day in the future.

Unfortunately, service was not attentive and slow, was disappointed there. (-1)")

Review.create(rating: 2, rest_id: manresa.id, user_id: 2, content: "Excellent service, in a chic, classy and cozy ambiance, where the artistically created and tasty food items are the jewels/centerpiece!

Be ready for a large number of small bites, with many amuse bouche items: excellent for socializing or celebrating an event! Our dinner time was about 5 hours: It was relaxing while enjoying the social gathering and the multitude of tasty creations!

While many food items were definitely delicious, most of them were highly salty: including some of the sweets/desert items.")

Review.create(rating: 2, rest_id: manresa.id, user_id: 3, content: "Three Michelin Star restaurant checked off my bucket-list, but still wanting to do French Laundry!

Ordered: Chef's Menu Pre-fixed Meal $235 per guest

Tina's Thoughts and Triggers
- Total of $511.13 with tax (no tip included yet) - Did it just increase my credit score? Maybe.
- Kent was beyond great as a server! He was willing to work with us and answer our silly questions. Very knowledgeable of Manresa's bakery and history.
- Experience, ambiance, appeal, taste, and everything else was on point and I would rate it 5 star all around even with or without the pricing
- I could probably write about each dish here and explain, but David Kinch changes his menu all the time.
- The difference between Manresa and French Laundry? I'll let you try both then you can tell me.
- How did we do it? I'm not really sure, but we got a kitchen tour.
- Left with a complimentary morning bun and a smile!
- Twice I've been here, maybe third or fourth time in the future. ;)")

Review.create(rating: 3, rest_id: manresa.id, user_id: 4, content: "As you would expect from a 3 star Michelin restaurant the food was amazing and the service was very good.   The taste packed into each dish was outstanding.   It is not my husband's type of place (i.e. small dishes, slower meal) but even he had a wonderful meal.

I'm sure there is an army of tweezer-wielding people in the kitchen.   Each dish was a work of art.   The servers (and there were a lot of them) knew what was in each dish and provided a lengthy description when it was brought to the table.

All in all it was an excellent meal, one that we would save for a special occasion.  A few items to note (only because for a 3 star restaurant you wouldn't expect this):
- Our friends had surprised us with a contribution to the cost.  There was a card on the table when we arrived letting us know, and the waiter also mentioned it.  But when the bill came the $200 was not reflected and I had to ask for the bill to be revised.
- My husband had to ask for the bread. I'm not sure if this is a standard approach or not.    Manresa does make its own bread,  and it is excellent (3 different types to choose from), so it seemed strange they did not offer it until we asked.
- If you decline the cookies and other items they bring after the dessert course they will put them in a bag to take with you.   Our waiter told us they would be waiting at the front when we were ready to leave but they were not.  We had to ask and the woman at the front had to track them down.")

Review.create(rating: 3, rest_id: manresa.id, user_id: 5, content: "I had the pleasure of coming here to celebrate my 5 year anniversary, and it was a great experience. The BF had to book 3 months i advance for the prime 7:30 spot for dinner, and thank god he did because dinner took 4 hours. The place was beautiful with fresh flowers displayed around the restaurant. There are 2 dining rooms separated by a hallway, but they are open so you can see into them. I loved this because it gave me a better sense of intimacy, not only with my BF, but with my waiter as well. At the same time, I could people watch and see everyone enjoying the dishes that would soon be in front of me.

We were greeted before we even reached the door, and quickly seated to our table. I had the great opportunity of having Kent as my waiter for most of the night. I say most of the night because there was a flop where someone else introduced himself as my waiter after Kent (which made Kent think he wasn't our waiter), and then kinda just left my BF and I for dead. When Kent realized he came back. That was the only problem during the entire night, but it was more than made up by the impeccable service from everyone else we encountered.

We sampled the tasting menu, and I loved everything on it except for the winter tidal pool (monk fish liver is not tasty IMO, and I was so tired of Uni). My favorite dish was the charcoaled grilled squid, closely followed by the scallops. My BF loved everything; his favorite was the scallops, hands down. The menu flowed very well up until the last meat course, which was venison. I am a little biased against venison and so it threw me off, but I think this dish was done very well. The flavors were great, and the meat was only slightly gamy. I didn't completely agree with venison being on the menu, but I admired attempt.

The entire night was amazing, and I can not wait until I can come back here again and try another tasting menu. It was one of the best dining experiences ever and I still am very appreciative that the BF made dinner plans for us here to celebrate our special day. My only regret was not grabbing more caramels on my way out; they're to die for!!!")

Review.create(rating: 3, rest_id: restuarant_at_meadowood.id, user_id: 6, content: "Culinary Perfection! If you had to choose 1 restaurant to go to before you die, go here (or French Laundry )

Atmosphere: 5/5 The excitement begins with the drive up to the restaurant, the grounds are stunning! It really makes you feel like you're at a special place hidden in the woods. (Beware it's easy to get lost at night so listen to the instructions that they give you at the gate.) We were greeted at the door and were able to spend some time sitting by the fireplace enjoying the comfy chairs in lounge area before being seated. The main dining room was small and intimate, but you still felt far enough away from everyone that you didn't feel crowded.

Service: 5/5 Each server was knowledgable and welcoming. The somolier on hand went above and beyond to find us the perfect bottle of wine! As wine lovers we enjoy learning about wine and she talked to us about different wines, her favorites wine, and how she became a somolier. By the end of the meal we felt like best friends with her! That type of knowledge, customer service, and social awareness is hard to come by.

Food: 6/5 Wow wow wow!!!!! The food left me speechless! Every single edible thing that was placed in front of me was perfect, absolutely perfect! One dish in particular stood out, the asparagus. It's strange to say an asparagus left a big imprint on me as most people think it's just a vegetable, and when prepared by any other chef it is just a vegetable, but not here! The texture wasn't chewy at the base and it was lightly seasoned. It was the best asparagus I've ever had in my life, so good that I asked what the chef did to prepare it so perfectly. (Of course they didn't give away the chef's secrets though.) They do change the menu here often and the asparagus isn't always included, but don't worry every dish is flawless. Another dish that surprised me was the lamb. Generally, I'm very picky with how lamb is prepared and don't always love it, but this lamb I LOVED! Not to mention the plating was unique. The creativity, plating, and how the flavors blend beautifully together was wonderful, it's a true masterpiece of a meal.

Overall: 5/5 I'm going to have a hard time finding a restaurant in the world that can beat this one! Highly recommend!")

Review.create(rating: 3, rest_id: restuarant_at_meadowood.id, user_id: 1, content: "First time at a 3 star Michelin restaurant and it lived up to expectations.

The place is impeccable. Very clear lines, everything in its location and flowing.

The staff is amazing. They all work the same days so there is a chemistry and fluidness in how the work. Very friendly, knowledgeable. Not stuffy at all, which you could imagine at an upscale restaurant.

At the end of the meal, Jamie our lead server offered to give us a tour of the kitchen. We gladly accepted. Got to meet the chef too!

It is pricey, but well worth it for a special occasion!")

Review.create(rating: 3, rest_id: restuarant_at_meadowood.id, user_id: 3, content: "The entire intent of my recent Napa Valley trip was to dine at The French Laundry so when that reservation was secured, everything else was gravy.  My friend asked if I wanted to do the tasting menu at The Restaurant at Meadowood, another 3 star Michelin restaurant or if I rather do the three course bar menu.  I was totally down for the tasting.  After all, I was a mommy to 2 littles and who knows when I'd be lucky enough to fly across the ocean solo and be back again.  I had one chance to do it right.

From the moment we arrived at the restaurant, service was top notch.  We were greeted as we reached the steps to the restaurant and after dinner we were also escorted out of the restaurant.  Amazing and warm service throughout the evening.

We opted to have our tasting at the bar which I assume made for a more casual dining experience than in the restaurant's formal dining room, but we still received top notch service and presentation of all of our dishes.  We opted for cocktails that evening and had the best time with the bar staff Sam and Colby.  They seemed so happy to be there which just made our experience so much more fun.

I loved that the dishes were just presented and that I didn't have a preview of what was coming.  It reminded me of omakase at a sushi restaurant where you put your trust in the chef.

That night we had about 13 courses.  I loved every course and my favorites were the eel, oysters, and poussin.  All the courses were beautifully presented.  Dining at the Restaurant At Meadowood is definitely one of my top dining experiences.  I would return given the chance.")

Review.create(rating: 2, rest_id: restuarant_at_meadowood.id, user_id: 7, content: "I feel very lucky to have had the opportunity to dine at the chefs table at the extraordinary Restaurant at Meadowood. We were escorted through the kitchen and after receiving a tour, we were shown to our seats with a full view of all the action.

Liz, our host, was so kind and knowledgeable about everything that Meadowood had to offer. We started with a glass of sparkling wine and each dish that arrived was fresh and played beautifully. I wish I could re-name each of the 16 courses, but I am not a chef and each course was so intricate.

Throughout the dinner, different sous chef's greeted us and welcomed us to the restaurant. They spoke about their dish and answered any questions we had. Everyone was so kind.

I highly highly recommend reserving your spot at this restaurant and if you are celebrating, try to reserve the chef table.")

Review.create(rating: 2, rest_id: saison.id, user_id: 2, content: "Had a wonderful meeting at Saison recently.  The menu is heavily seafood based as many reviews have pointed out.

The setup is interesting with an open kitchen with multiple tables nearby.  There are some tables pretty far away from the kitchen which is unfortunately if you happen to get seated there.

There were a few dishes that were absolute home runs.

The first course was a caviar dish with a custard and warm biscuit.  This was one of the largest servings of caviar ever had in a tasting menu with it being golden osetra which is not cheap.  Perhaps best biscuit too which added to the course.  There was nothing to dislike with this course!

Another favorite was a dungeness crab dish.  It was served with a boar jus that would have never thought of combining but it worked.

The uni toast was a great one bite dish.

The other home run was a black cod course.  It was the crispiest skin ever had in a fish dish.  Other chefs, steal their method on this one!

The only thing about this meal comes down to price.  The bill is not for the faint of heart.  At this price point it is is for the truly special occasions only.")

Review.create(rating: 2, rest_id: saison.id, user_id: 4, content: "I would give this 3 Michelin stars just for the atmosphere!

Atmosphere: 5/5 This restaurant is dimly lit but very open. The most unique part of this restaurant is the open kitchen. From anywhere in the main dining room you can see the kitchen and watch all of the chefs prepare your courses without even a glass barrier. It's a pretty incredible experience!

Service: 5/5 As expected at any Michelin star restaurant the service was superb. Each dish was well explained and we felt like welcome guests.

Food: 4/5 While most of the dishes were great there were two dishes that stood out to me as needing work. Luckily, they change their menu frequently so every time you go you have a slightly different experience. The dishes that neither of us cared for was the salad. A server explained that each ingredient came from the Saison garden, which is cool, but it looked like a few flowers and leaves put into a bowl. Even worse, it tasted like random flowers and leaves put into a bowl... Hopefully they pulled this off the menu. I was also not impressed with the foie gras dish, my boyfriend thought it was decent but we have both had better. On a positive note, the creativity at Saison is superb and each dish was well plated.

Overall: 4/5 Overall a pleasant experience but not flawless. I hope to give this restaurant another try after I finish my rounds of other Michelin star restaurants.")

Review.create(rating: 3, rest_id: saison.id, user_id: 6, content: "3 Michelin Star restaurant, I had very high expectations for this place.

The price of the tasting menu I felt was double the worth...the menu, on paper, was inventive and adventurous but the menu on my palate was lacking that wow factor that is expected for a Michelin Star restaurant. No, I had never tried celery root until this night. Was it a mind blowing experience? NO. It was still all very good,

I paid 1/2 the amount at Benu (another 3 Michelin Star) and it was THE BEST DINING EXPERIENCE HANDS DOWN, anyway that's for another review...but this place, made me basically sit in some strangers lap the tables are so close, the food was something that I felt like should have been worth 1/2 of what was charged. ($600 a person)  Worth trying but definitely left me questioning who the hell said this was worth $600? $300, yes, sure.

If you've never done the whole 25 course meal type thing I would recommend going for entertainment only, watching the kitchen staff chug along.")

Review.create(rating: 3, rest_id: saison.id, user_id: 1, content: "One of the best meals I've ever had. Saison is also one of the most expensive meals I've had but definitely worth it. No surprise it has 3 Michelin stars.

The service and food where top notch. We were greeted with some 'complementary' amazing champagne and it felt like the staff consistently went out of their way to make it a better experience. Inside the restaurant there is a clear view to both a bar where a bartender is coming up with some cocktails (we tried one and I can confirm they are ) and there is also a good view to the kitchen where you can see the chefs doing their magic.

The location is not brilliant, with the restaurant not to far from the Giants stadium but inside that all changes. I wouldn't say there were more than 10 tables in total inside.

We had a set menu (I'm not sure if there is another option) which was incredible. There were two dishes in particular that blow my mind and had flavours I had never even come close to experiencing. I won't spoil the menu as I think the surprise is part of the experience but it's safe to say you won't be disappointed.

My one criticism is that the music played is slightly strange. The atmosphere is brilliant apart from the fact that casual, low key 80s music was being played. Although they were great songs, it think a chilled out music track like that at Buddha bar would work better. We asked about it and it seems that the chef is into that music which explains a lot.")

Review.create(rating: 2, rest_id: acquerello.id, user_id: 8, content: "Amazing service, really went above and beyond what I expected.

You get way more food that you expect here, with the chef giving out the occasional complimentary dish. The appetizers are amazing and the foie gras pasta is superb. The main courses on the Prix Fixe menu are decent, but not as amazing as the appetizers.

Definitely deserves its two Michelin stars!")

Review.create(rating: 1, rest_id: acquerello.id, user_id: 3, content: "3.5 stars. You can't really fault this restaurant since everything is ultimately well-cooked and delicious. Service is immaculate.

That being said, for a 2-Michelin star restaurant, I was expecting creativity and to have my taste buds blown away by interesting and invigorating flavors. Unfortunately, it wasn't. This is more of your traditional fare.

The restaurant itself is intimate (about 15 tables) but the decor is old-fashioned and desperately needs an update.

While everything was tasty, I couldn't help but to be slightly disappointed. It is a good place to try once but at this price point, it will probably be a one time thing since it wasn't particularly memorable or amazing.")

Review.create(rating: 2, rest_id: acquerello.id, user_id: 4, content: "This place is just amazing. From the warm greeting, everyone acknowledging your special occasion (if you told them when you made your reservation), to the excellent, knowledgeable, friendly servers, to the incredibly decadent and delicious food -- it all combines to create a first class dining experience.

The ambience is beautiful but warm - I believe it used to be a church.  It looks like one, with the vaulted and beamed ceilings. It's formal, and the dress code reflects that, but not stuffy.

We loved every dish we had - the squid ink risotto, the foie gras pasta (as good as everyone says), the testa terrine with foie gras, the rabbit wrapped in pancetta, the short rib purse pasta (can't remember the Italian name - sacchetini maybe?), the cheeses and the desserts (the zuppa (which was a layer cake, not a soup, and amazing) and the semifreddo).

We had the sommelier pair glasses with our courses, which I really enjoyed and would do again. He let us taste each one first, which was a nice touch. It wasn't overly pricey either.

Next time I would skip the dessert course since they come around with the dessert cart afterward - but I only need a taste of sweet after dinner. The desserts were amazing and if you are a dessert person you probably won't want to miss them.

Overall a fantastic special occasion restaurant which we will return to again and again.")

Review.create(rating: 1, rest_id: acquerello.id, user_id: 5, content: "I honestly don't understand what all the hype is about. I know they have a Michelin star, but I wasn't impressed. Throughout the meal we were presented with little chef surprises, or amuse buche's. It was nice to see that the restaurant gave us a bunch of \"freebies\" especially being to many tasting venues and not receiving such a service. I started with the mushroom pasta. This dish was overly salty. The bison was next. I have to say, this plate was really good. The bison was cooked perfect, the sweet richness of the sauce was a wonderful accent to the meat. I was not fond of the puree. For dessert I had the panna cotta which was good. All in all though for Micheline status I felt it really didn't hit the mark. And with so many Italian restaurants to choose from the competition is fierce.")

Review.create(rating: 3, rest_id: acquerello.id, user_id: 6, content: "We came here for valentines dinner and they were absolutely amazing!!! The service is impeccable! The restaurant can sit a descant amount of people and there is no gas table in the restaurant! From the moment we walked in we felt so welcomed, the food was amazing! Their tasting menu changes by the season and there's an a la crate menu to choose from too! I had our waiter choose courses for me and I was so glad he did!!!! There's no words to explain each and every dish! But I swear the good here is to die for! We also got a bottle of wine Roth our dinner and their selections are wonderful!! This place is s define must try and go to for the holiday!")

Review.create(rating: 3, rest_id: atelier_crenn.id, user_id: 1, content: "To say Atelier Crenn is anything short if extraordinary would be an understatement.  Words can not describe the dining experience my wife and I had here on a late July evening.  Each bite is so well conceived and memorable.  While the service was less than stellar, the food itself greatly outweighs any negative marks Atelier Crenn earns from its less-than-attentive staff.

Service: I have been to Jean Georges in New York, which provided the best dining experience in my life, but the least memorable food, and can say that the service at Crenn is lacking.  First, our server did not acknowledge us until maybe 5-10 minutes after we sat down.  Furthermore, they mistakenly brought us a dessert course, 3 courses too early, before we had finished our savory bites.  They ultimately decided to bring that same course again, later on in the meal.

Food:  Each course is very well balanced, full of flavor, and very memorable.  My favorite courses were the abalone and salmon.  Each dish is uniquely plated, and keeps each diner guessing with each bite.  We found ourselves trying to guess the next course based on the next line in the poem, but were often times well off the mark.  I had very high expectations for the food, and those expectations were greatly exceeded!

Ambiance & Decor:  Atelier Crenn is quite small for a michelin star restaurant, but perhaps that was the intent.  The lighting is very ambient, romantic, and greatly adds to the mystery and curiosity of the dining experience.  Tables are somewhat close, but not so close that you feel you are engaged in another table's conversations.")

Review.create(rating: 2, rest_id: atelier_crenn.id, user_id: 2, content: "I'm sure enough beautiful words have been said about this place. My friends went here to celebrate a big personal milestone and came away with rave reviews so my boyfriend and I had to go try it for ourselves.

The place is understated yet luxurious, the menu is simple yet multi-layered, and of course the poem is charmed in every way.

I had a very pleasant evening. This is a great place to quietly celebrate something or someone special.")

Review.create(rating: 2, rest_id: atelier_crenn.id, user_id: 3, content: "There are so many reviews here that describe everything so well.  There is only one menu available now; with a 20% \"guest enjoyment fee\" included.

Dominique was present and greeted us, and was so pleasant, and the food was terrific.

The hiccups came from the wine service.  I ordered the Reserve Pairing and was surprised we started with a $22 bottle of CEP wine.  It was good but for $300 each it was disappointing. Same with the second pairing.  Then a staff member said the somm didn't realize we were the Reserve order and would pour extra wines towards the end.

Another area that bugged me at $600 uptick for wine pairing was the somm would pour from the bottle into a small carafe and then divide that portion in to our glasses and the. leave an ounce in the carafe, and walk away and dump it.  Come on dude! we are paying the equivalent of $100 a glass when summed up....pour the rest.

I wasn't a big fan of the deserts though they were beautiful to look at.

So the big question after spending more than $2 large for a dinner, would I do it again? I contrast it to my first meal at the French Laundry or Benu..both were magical experiences.  The meal short of dessert was in my top 5 ever...I will dine here again someday. Overall 4.5 stars.")

Review.create(rating: 3, rest_id: atelier_crenn.id, user_id: 4, content: "Wow, one of the best restaurants I have been to in a long time (maybe since Quince).

Like most of the reviews here, I can only say \"mindblowing\".

Typical 15-17 course menu written out in poetry instead of direct verbage.

Dominque likes to introduce mostly natural elements from nature even in the desert courses - and what I mean is that it's not sugar based or too much condimental elements but instead natural based flavor augmentation. She comes to every table to say hello as well.

Seriously, I've never experienced some of the flavor combinations she created. Some say it's the best food they've ever had and I don't tend to make such extreme opinions but in this case, I think it's pretty close. This place should have 3 stars - it was much better than the Restaurant at Meadowood and very much on par with Benu.")

Review.create(rating: 3, rest_id: baume.id, user_id: 5, content: "This was my second visit to Baume. The first time was three years ago. Although we thought it was good then we never went back.
However one of our friends invited us to dinner here.

Oh my gosh! The food was so good. We liked every single dish. My husband liked Baume more than Saison.
The prefix menu was $298 per person but it includes gratuity. Not cheap but definitely worth it.")

Review.create(rating: 2, rest_id: baume.id, user_id: 6, content: "TThis place was amazing! I made a reservation for my husband on I for a Friday night. Please note- they only take reservations. They do not except walk-ins. Also the reservation cannot be made on the day of your visit. The restaurant is really small and quiet. My husband said it reminded him of being in an art museum.

We lucked out and had the only reservation of the night. We had the entire place to ourselves. The owner was our waitress, which I thought was so cool. She really took care of us and I liked that we could offer feedback immediately.

You have no option other than the tasting menu. They do take into account dietary restrictions though so things can be modified. We added the wine pairing option to our meal. If you are spending that much money anyway you might as well enjoy it to the fullest. We were not disappointed. The wines paired really well with each course.

Everything was good here, even the table bread and butter! Some of my favorites were the Baume Spheres, The Jidori Egg with potatoes, the Turbot, and the dessert course. The potatoes were nice and creamy. You are only having a little dollop of it so you don't feel too guilty about the richness of it. I had Turbot two ways because I do not eat beef. Instead of giving me two pieces of the same fish they prepared one in the same manner as the beef dish. It was like I was having two different proteins. We commented on the spices really coming through. The owner said she gets the spices from abroad.

The whole experience was amazing. They take great care in their plating and flavors. As I said the wine pairing was on par with each course. A new bottle was opened for each course. The owner really made us feel special.")

Review.create(rating: 2, rest_id: baume.id, user_id: 7, content: "This place was amazing! I made a reservation for my husband on I for a Friday night. Please note- they only take reservations. They do not except walk-ins. Also the reservation cannot be made on the day of your visit. The restaurant is really small and quiet. My husband said it reminded him of being in an art museum.

We lucked out and had the only reservation of the night. We had the entire place to ourselves. The owner was our waitress, which I thought was so cool. She really took care of us and I liked that we could offer feedback immediately.

You have no option other than the tasting menu. They do take into account dietary restrictions though so things can be modified. We added the wine pairing option to our meal. If you are spending that much money anyway you might as well enjoy it to the fullest. We were not disappointed. The wines paired really well with each course.

Everything was good here, even the table bread and butter! Some of my favorites were the Baume Spheres, The Jidori Egg with potatoes, the Turbot, and the dessert course. The potatoes were nice and creamy. You are only having a little dollop of it so you don't feel too guilty about the richness of it. I had Turbot two ways because I do not eat beef. Instead of giving me two pieces of the same fish they prepared one in the same manner as the beef dish. It was like I was having two different proteins. We commented on the spices really coming through. The owner said she gets the spices from abroad.

The whole experience was amazing. They take great care in their plating and flavors. As I said the wine pairing was on par with each course. A new bottle was opened for each course. The owner really made us feel special.")

Review.create(rating: 3, rest_id: baume.id, user_id: 1, content: "We had such a memorable experience here.

Christy, the hostess and wife of the chef, is impeccable. Her demeanor and friendliness are very inviting and warm.

The menu changes frequently, so be warned!

We were greeted with a birthday card on the table (very personal touch!)

We went with the 8 course tasting menu (really more like a 12 course tasting menu). My favorites were: (sorry, don't know the proper names to these dishes,see pics)

1) House baguette--so fresh and crunchy on the outside!
2) Artichoke sheet and Asparagus
3) 62 degree eggs
4) Cheese fondue (very unique presentation)
5) Seared Filet mignon--almost rare

Salty caramel & chocolate taffy AND chocolate hazelnut toothpaste to take home. (Please note: the chocolate toothpaste is consumable and should not be used to brush your teeth.)")

Review.create(rating: 2, rest_id: campton_place.id, user_id: 2, content: "Overall, the restaurant performed well for my dining experience, as expected for a 2 Michelin Star restaurant. Prior to getting your appetizer, you are first served with several amuse-bouche which nicely introduced us to the chef's Indo-Cali themed cuisine. The duck and beef tenderloin were exquisite and flavorfully cooked- highly recommend them! Spices from India would gently enlighten your pallets from behind while still tasting the fresh Californian ingredients.

If I was to give one criticism, it would be the ambience. It didn't feel like a 2 Michelin Star restaurant. Comparing the Campton Place with fellow competitor Acquerello, the Campton Place was a bit loud and rushed. The service however was good and making a reservation was very easy. Great job Campton Place!")

Review.create(rating: 2, rest_id: campton_place.id, user_id: 4, content: "Michelin star to me means the food kind of...should not disappoint. With 2 stars, Campton Place truly did not. I was here for a pharmaceutical sponsored dinner, so the menu was prix fixe.

Pros:
Food - cooked and presented to perfection
Service - great (barely noticed them, is that good or bad?)
Comfy cushioned chairs~

Cons:
None so far.

Recommendations:
Slow Cooked Beef Short Rib - tender, moist, with a light celeriac purée
Wild Mushroom Soup - slightly thick consistency with a small portion of mushrooms
Vanilla Crème Brûlée - I'm an ice cream person. This was my first crème brûlée and it was good, but too sweet for me.

Food was wonderful and did not disappoint, but I'm not into dishing out $$$$ for a meal. I'd come back if another drug company does a presentation here.")

Review.create(rating: 3, rest_id: campton_place.id, user_id: 5, content: "Having lived in SF my whole life, I was surprised that I haven't ever dined here and that it has two Michelin stars. I also didn't know that they served Cal0Indian cuisine. I was here for a celebratory dinner and you have the option of a 3 course menu or 6 course tasting menu. We opted for the 3 course (you can opt out of the dessert and do two savory apps, if you like, for an additional charge). The room is not that large, maybe no more than 16 tables. Tables were far enough apart to feel like you have your own space.

Before our food came, we received three complimentary amuse-bouches (crispy lentils; pani puri with eggplant; and crispy kale on top of naan). It was quite a surprise to receive so many dishes. Loved the naan and the pani puri.

Some of our highlights of our meal:
Spice Pot - Loved this. I don't want to give away the theatrics, so I would just say to try this.
Trumpet Mushrooms - I really like the flavors from the mushrooms and wished I could eat more of this.
Angus Beef Tenderloin - Thought the portion size on this was bigger than expected. Got two big pieces of beef with shaved truffles on top and a more delicious mushrooms
Duck - I liked the duck (again good portion size), but didn't care too much for the blueberry ketchup sauce.

I ordered their Dark Chocolate dessert which was decadent, but before that, we were also given a Pineapple sorbet that was a great palette cleanser. After that, they also gave us a celebratory chocolate cake, which was a nice touch. And then after that, we were given two different sweet treats to finish our meal.

Our server, Robert, was amazingly friendly and provided great service throughout the evening. I'd be interested to try this place again and even the 6-course menu next time.")

Review.create(rating: 2, rest_id: coi.id, user_id: 6, content: "A two star Michelin with a lot of soul and character and a focus on seafood.

Originally led by Chef Daniel Patterson, a change of guards led to Chef Matthew Kirkley taking over in 2015.

The difference? Less of a focus on local and more of a focus on the world's best (yes, your salt will come from a river in Australia). If you're morally ok with this, then Coi is an experience worth having.

Focus is on finesse, perfection and simplicity. Flavors aren't over-produced as much as they are engineered.

Coi just seems to get that a perfect meal must satisfy all senses. Well done.")

Review.create(rating: 1, rest_id: coi.id, user_id: 7, content: "I was just not blown away. Did the whole tasting menu. Everything was plated beautifully and services was great. Not sure why I didn't like the food, maybe because my taste buds is different from some of the 5 stars reviews. Didn't have the wow factor. Lacking in flavor. I feel bad writing this review but I just didn't like the food that much. I would like to give this another chance because this review is long over due, before the new chef which was earlier this year.")

Review.create(rating: 1, rest_id: coi.id, user_id: 1, content: "I never got around to trying this place before Daniel Patterson's departure, but I had the opportunity to check out Chef Kirkley's new opening menu recently.

The daily tasting menu is seafood-focused and comprises 12 courses ($225/person). Each dish was certainly tasty but some were more memorable than others; highlights included the ocean trout and the turbot. Presentation was creative and top-notch - the turbot featured \"scales\" made of round slices of vegetables, for example.

There are wine pairings available, in addition to a non-alcoholic tea pairing, which I thought was unique. They also offer quarter-bottles of wines using the Coravin system; I certainly liked the pinot noir ($98) that I tried but ultimately wasn't sure if it was worth the premium over the regular (and much more reasonably-priced) options.

Service was professional and polished, as you would expect - a tad on the colder side though. The minimalist/modern decor made for a pleasantly relaxed yet upscale experience.

Whereas tasting menus at many other restaurants avoid the fine dining cliché of tiny portions, the courses at Coi are relatively small and while I didn't leave hungry, I felt the meal should have been more substantial. For that reason, I found myself attempting to justify our dinner by looking at it more as a gastronomic experience rather than an actual meal. To that end, it was definitely a delightful dining experience and I wouldn't mind coming back in the future.")

Review.create(rating: 2, rest_id: commis.id, user_id: 2, content: "Price/Value: The 8 course meal will set you back about $160 total ($125 + tip and taxes). On top of the 8 seasonal courses, you also get 4 to 5 snacks during the course of the dinner. It comes to be $10-$15 for each small dish. Definitely not a bargain by any means, but very reasonable for a two-star Michelin restaurant in the bay area. (4/5)

Food: Most of the dishes/snacks were very good. Some of the most memorable dishes are the slow poached egg yolk, poached halibut, and rhubarb dessert with frozen buttermilk. You get to try a lot of different things (milk custard with caviar, lamb, halibut, 3 different kind of desserts) and I was definitely satisfied/full by the end of the meal. I would say some of the dishes is on the more savory/salty side, but the majority were delicious and creative. (4/5)

Service: Great service overall. The staff is very attentive to your needs and moves on with the dishes at a very good pace. Really helps relax the entire dining experience. All the chefs are extremely focused on preparing the dishes so there isn't any interaction even at the chef's table. Not a big deal, but would've been kind of nice. (4.5/5)

Great experience overall. I think my expectations for the restaurant was already very high and it  delivered. I would definitely consider coming back.")

Review.create(rating: 1, rest_id: commis.id, user_id: 3, content: "I was super excited to try this restaurant after bookmarking it for a while and after a friend's recommendation. But sadly disappointed.

I am not going  into details of the food, because nothing was memorable or stood out to us. The plating wasn't spectacular either. We opted for sparkling water and the waitress opened a second bottle of it without our consent towards the very end of the meal and of course charged on our card. We do not mind paying for already overcharged sparking water, but really without consent?!

Compare to other two stars Michelin restaurants I've been to Commis doesn't have the same standards nor the creativity in their menu.")

Review.create(rating: 2, rest_id: commis.id, user_id: 4, content: "Wonderful birthday meal for my husband. Checked on opentable and there was no availability but called and they were able to find a spot for me on Friday night which was on my hubby's bday. 2 michelin star and and I loved the presentation of all the dishes. 8 courses with snacks and desserts in between. We enjoyed all the dishes, thoughtfully prepared, light, with french but also zen asian influences.

The staff was attentive and also wished my hubby a happy bday along with a signed card from the team. Thought the service was really top notch.

Glad we finally tried this gem of a restaurant and very easy street parking.")

Review.create(rating: 3, rest_id: commis.id, user_id: 5, content: "We were a little apprehensive coming here based on the description of courses in prior reviews. I am SO GLAD we decided to try Commis anyway. Many of the dishes/ingredients sound downright bizarre (e.g, fermented artichokes, charred lemon, smoked dates, fennel ice cream - not all together of course), but they WORK. Oh man do they work. This was the single best, most inventive meal (in terms of taste and presentation - most courses were like works of art) we've had in at least a year, perhaps even since we went to Cyrus before it closed.

Most courses were quite light - lots of seafood, no poultry, just one meat course (ours was incredible roast pork) - and very fresh/clean tasting (including dessert). However we were comfortably full at the end of the meal, particularly thanks to the insanely good bread and butter.

Based on the above, along with the \"good value\" at $125, it probably goes without saying that Commis will go into our regular rotation of restaurants whenever we visit the Bay Area. Two Michelin stars well deserved.

PS - Loved that they don't appear to take themselves too seriously, as evidenced by the 80s pop greatest hits playing during our dining experience.")

Review.create(rating: 1, rest_id: commis.id, user_id: 6, content: "Came here with high hopes, but left feeling that the experience was incomplete. The total grade is by lowest numerator. The service was cold... Very cold.

Service : Not perfect 4/5
After our bread course, the crumbs were left on our table for the subsequent two courses before it was swept away. How can you, as an esteemed restaurant, serve the next course when the crumbs of the last has not been cleared?

Wine : 4/5
A beer with crushed iced carrots-- While it's nearly hailing outside in the middle of December? I have never felt so damn cold in my life. A questionable choice or two in the wine pairings, but the rest were understood. Our sommelier mumbled so quickly that I find myself asking him again and again what he had just said. Enunciation would have helped immensely.

Food: 3/5 Uninspired
Great, there's Jerusalem artichokes, there's caviar, gold leaf and flower petals on my food, but where is the respect for the food? Why add any element which does not contribute to the taste of the course? Where is the creativity? The food appears so pretentious but does not stand on its own. The steak was more boring than anything I can create with a sous vide and a cast iron at home. The fish courses were bland and/or covered in ice. I could not discern the \"sweetness\" of fresh fish. Something tells me I'd be happier ordering fresh surf clams at a cantonese restaurant or sashimi at Ebisu.

Accommodations: 5/5
My partner has a seafood allergy and understand that most of the their menu is seafood based and thus makes it quite difficult for them to accommodate him. I can see the effort in some courses to completely serve him a new dish and I understand that it takes time to do so. ")

Review.create(rating: 3, rest_id: quince.id, user_id: 7, content: "Outstanding!!!
We went there to celebrate our honeymoon and they truly went above & beyond to make our experience memorable.  From customizing our menus with a special congratulations message to a private kitchen tour, the staff pulled out all the stops for a phenomenal experience.  The food itself was outstanding as was the ambiance - modern, romantic, elegant, understated, sophisticated.  I was even impressed with the quality & design of the stemware, flatware  - right down to the Raynaud dessert plates that I immediately added to my registry.

I will absolutely go back the next time I'm in San Francisco - thank you for a phenomenal experience!!!")

Review.create(rating: 3, rest_id: quince.id, user_id: 8, content: "I'll definitely come back here. This 2 Michelin star restaurant truly deserves it!!! The customer satisfaction and services they give here is beyond professional. The waiters are very tentative and professional, making sure everything was okay and checked in with us every now and down. Excellent! The menu I had was very special for me because it was for my special day - Birthday ^___^ the chef and Quince team did a great job on  putting together the menu for me because it was everything that I love! I'm so grateful to have the opportunity to dine here tonight.

Every course was very delicious and well proportioned. The lighting and ambience in there was very classy and calm. Food was impeccable. There was not one dish that I did not enjoy. This place should be crowded in the later evening (around 8 PM) that's when the restaurant start to fill up and noise levels gets higher. If you want to dine in peace, try to aim for a reservation at 6ish.

Price is $$$$ but it is definitely worth it. If you're a true foodie and like fine dinning. Try out Quince!!! :)")

Review.create(rating: 3, rest_id: quince.id, user_id: 9, content: "Make sure you have a reservation and prepare to be spoiled. We had the chefs tasting menu along with the suggested wine pairings. Absolutely insane night of flavors and treats.
It is expensive. About $400/head for both meal and wine before tip. But for sure next time I'm in San Fran I will return.

The service is top notch. Extremely knowledgeable staff.

The bar in front of the restaurant is something too that you don't want to leave quickly. Very comfortable and great atmosphere.")

Review.create(rating: 3, rest_id: quince.id, user_id: 1, content: "An empirical study was once done of the Beatles and found that while their library was largely melodic, many songs had an atypical dissonant chord and this was unique amongst musical groups. In my view, Michael Tusk is the Beatles of cooking - classic, beautiful dishes with a tweak of genius. He's not gonna put seafoam on african ants on nordic moss. But nothing he makes is mundane either - its all good while also being pleasantly surprising.

If price is no object, Quince is without a doubt the best restaurant in SF.

I've been to FL, Coi, Benu, Meadowood, Lazy Bear, Saison, etc and nobody comes close to Quince. I think Quince ranks up there with any 3-star restaurant I have been to in the world.

The restaurant itself is attractive and understated.

The service is flawless.

The dessert and cheese carts are a fun, nice touch.

The caviar and wine lists are amazing.

If I were on death row, this place would serve my last meal.")
