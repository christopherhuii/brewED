# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



def recipe_image(file_name)
  File.open(Rails.root + "app/assets/images/recipes" + file_name)
end

User.destroy_all

User.create(
  {
    first_name: "Christopher",
    last_name: "Hui",
    email: "christopher.kam.hui@gmail.com",
    password: "boomboom"
  }
)

Recipe.destroy_all

Recipe.create([
  {
    name: "Beast Mauler Tripel",
    description: "Belgian beers have a particular ethos—a kind of Belgian black magic. You brew it, throw it in a fermenter, add some yeast and let it go to work. It’s hard to understand what exactly happens while the beer is fermenting, but we’ve all tasted a Belgian beer’s particularities that separate it from all other beers, and most of us wonder how it’s done.

      Lew Bryson of Malt Advocate shares some of his thoughts on what makes a Belgian beer Belgian in his article “Conjuring Up The Black Magic of Belgian Beers,” in January/February 2005 Zymurgy. He gives a few conclusions and some advice, but the best way to figure it out is to go try it yourself. Check out the recipe below and see how your Belgian beer stacks up!",
    batch_size: "5 Gallons (19 L)",
    boil_time: "90 Minutes",
    image: recipe_image('belgian-tripel-1.jpg'),
    OG: 1.082,
    FG: 1.020,
    ABV: 8.14,
    SRM: 8,
    IBU: 39,
    beer_style: "Belgian Tripel",
    user_id: 1
  },
  {
    name: "Rissian River Pliny the Elder Clone",
    description: "Russian River Brewing Company’s Pliny the Elder is one of the most coveted double IPAs on the market. Craft beer drinkers travel far and wide to get their hands on a bottle or a pour from the tap. Pliny Elder has earned medals in the Great American Beer Festival and has been named Zymurgy‘s Best Beer in America for multiple years..

      Whether you can’t get your hands on a Pliny the Elder sample or you want to see how close you can brew the real thing, this Pliny the Elder clone recipe is perfect! Provided by Russian River founder and brewmaster, Vinnie Cilurzo, this small batch recipe uses over three-quarters of a pound of hops, making for a bitter and fragrant double IPA experience.",
    batch_size: "6 Gallons (22.7 L)",
    boil_time: "90 Minutes",
    image: recipe_image('pliny1.jpg'),
    OG: 1.072,
    FG: 1.011,
    ABV: 8.2,
    SRM: 7,
    IBU: 90,
    beer_style: "Double IPA",
    notes: "Note: This recipe is for a 6 gallon batch, with 5 gallons intended to remain after hop loss.",
    user_id: 1
  },
  {
    name: "Easter Quad",
    description: "Michael Tonsmeire has made a name for himself in the beer world – especially with sour beers. However, in his Brewer of the Week post, he shared a not-so-sour Easter Quad recipe he brewed with his neighbor, a priest, for a church’s Easter Vigil.

      Tonsmeire was expecting a light wheat beer, but instead was excited when his neighbor wanted to brew a Belgian Quad with a couple ingredients mentioned in the Bible (pomegranate and cardamom). Needless to say, it turned out delicious. Check it out recipe below and try to brew like The Mad Fermentationst!",
    batch_size: "10 Gallons (37.85 L)",
    boil_time: "60 Minutes",
    image: recipe_image('quad1.jpg'),
    OG: 1.082,
    FG: 1.023,
    ABV: 9.3,
    SRM: 22,
    IBU: 24.2,
    beer_style: "Belgian Strong Ale",
    user_id: 1
  },
  {
    name: "Phil’s Belgian Dubbel",
    description: "Phil Keener of Ashland, OH won a gold medal in Category #18: Belgian Strong Ale during the 2009 National Homebrew Competition Final Round in Oakland, CA. Keener’s Belgian Strong Ale was chosen as the best among 322 final round entries in the category.",
    batch_size: "5 Gallons (18.93 L)",
    boil_time: "90 Minutes",
    image: recipe_image('phils-belgian-dubbel.jpg'),
    OG: 1.068,
    FG: 1.012,
    ABV: 7.35,
    SRM: 18,
    IBU: 36,
    beer_style: "Belgian Strong Ale",
    user_id: 1
  },
  {
    name: "Matt's Sour Brown",
    description: "Homebrewing enthusiasts are becoming more and more interested in sour beer. However, the amount of aging required can be daunting. How can you replicate a beer aged in large oak casks in your glass carboys or plastic buckets?

      Another issue is fermenting your beer with bacteria or mixed cultures. There’s a threat of cross-contamination if the same equipment is used to make a conventional beer. Investing in another set of brewing equipment is a painful idea.",
    batch_size: "5 Gallons (18.93 L)",
    boil_time: "90 Minutes",
    image: recipe_image('sour-brown.jpg'),
    OG: 1.070,
    FG: 1.015,
    ABV: 7.20,
    SRM: 9,
    IBU: 22,
    beer_style: "Sour Ale",
    user_id: 1
  },
  {
    name: "Columbus Pale Ale",
    description: "Pale Ale is one of the most popular styles in the world. This recipe for a Columbus Pale Ale is as versatile as it is delicious! The recipe is adaptable to many other hop varieties – feel free to substitute the Columbus hops with your favorite varietal!",
    batch_size: "5 Gallons (18.93 L)",
    boil_time: "75 Minutes",
    image: recipe_image('columbus-pale-ale.jpg'),
    OG: 1.056,
    FG: 1.012,
    ABV: 5.80,
    SRM: 6,
    IBU: 45,
    beer_style: "American Pale Ale",
    user_id: 1
  }
])

Hop.destroy_all

Hop.create([
  {
    description: "1.5 oz (42 g) Styrian Goldings hops, 5.2% a.a (60 min)",
    recipe_id: 1
  },
  {
    description: "0.5 oz (14 g) Hallertau Hersbrucker, 4.5% a.a. (30 min)",
    recipe_id: 1
  },
  {
    description: "0.5 oz (14 g) Saaz, 3.7% a.a (15 min)",
    recipe_id: 1
  },
  {
    description: "1.0 oz (28 g) Centennial hops, 8% a.a. (0 min)",
    recipe_id: 2
  },
  {
    description: "2.5 oz (71 g) Simcoe hops, 12.3% a.a. (0 min)",
    recipe_id: 2
  },
  {
    description: "1.0 oz (28 g) Simcoe hops, 12.3% a.a. (30 min)",
    recipe_id: 2
  },
  {
    description: "0.75 oz (21 g) Columbus* hops, 13.9% a.a. (45 min)",
    recipe_id: 2
  },
  {
    description: "3.5 oz (99 g) Columbus* hops, 13.9% a.a. (90 min)",
    recipe_id: 2
  },
  {
    description: "1.0 oz (28 g) Columbus* hops, 13.9% a.a. (dry hop, 12-14 days total)",
    recipe_id: 2
  },
  {
    description: "1.0 oz (28 g) Centennial hops, 9.1% a.a. (dry hop, 12-14 days total)",
    recipe_id: 2
  },
  {
    description: "1.0 oz (28 g) Simcoe hops, 12.3% a.a. (dry hop, 12-14 days total)",
    recipe_id: 2
  },
  {
    description: "0.25 oz (7 g) Columbus* hops, 13.9% a.a. (dry hop, 5 days to go in dry hop)",
    recipe_id: 2
  },
  {
    description: "0.25 oz (7 g) Centennial hops, 9.1% a.a. (dry hop, 5 days to go in dry hop)",
    recipe_id: 2
  },
  {
    description: "0.25 oz (7 g) Simcoe hops, 12.3% a.a. (dry hop, 5 days to go in dry hop)",
    recipe_id: 2
  },
  {
    description: "2.5 oz (70.9 g) Hallertauer Tradition pellet hops, 6% a.a., (65 min)",
    recipe_id: 3
  },
  {
    description: "2 cup (473 mL) compressed homegrown Cascade whole hops (60 min)",
    recipe_id: 4
  },
  {
    description: "1 cup (237 mL) compressed homegrown Cascade whole hops (5 min)",
    recipe_id: 4
  },
  {
    description: "2.0 oz (56 g) whole Hallertauer, 4.3% a.a. (60 min)",
    recipe_id: 5
  },
  {
    description: "0.5 oz (14 g) Columbus whole hops, 13.9% a.a. (60 min)",
    recipe_id: 6
  },
  {
    description: "0.5 oz (14 g) Columbus whole hops, 13.9% a.a. (15 min)",
    recipe_id: 6
  },
  {
    description: "0.5 oz (14 g) Columbus whole hops, 13.9% a.a. (5 min)",
    recipe_id: 6
  },
  {
    description: "1.0 oz (28 g) Columbus whole hops, 13.9% a.a. (0 minutes)",
    recipe_id: 6
  },
  {
    description: "1.5 oz (43 g) Centennial whole hops, 10.9% a.a. (dry)",
    recipe_id: 6
  },
])

Grain.destroy_all

Grain.create([
  {
    description: "13.5 lb (6.12 kg) Pilsener malt",
    recipe_id: 1
  },
  {
    description: "1.0 lb (0.45 kg) aromatic malt",
    recipe_id: 1
  },
  {
    description: "1.0 lb (0.45 kg) Belgian candy sugar (clear)",
    recipe_id: 1
  },
  {
    description: "13.25 lb (6.01 kg) two-row pale malt",
    recipe_id: 2
  },
  {
    description: "0.6 lb (272 g) crystal 45° L malt",
    recipe_id: 2
  },
  {
    description: "0.6 lb (272 g) Carapils (dextrin) malt",
    recipe_id: 2
  },
  {
    description: "33.0 lbs (15 kg) American Pale malt (83.8%)",
    recipe_id: 3
  },
  {
    description: "2.0 lbs (0.9 kg) CaraMunich malt (5.1%)",
    recipe_id: 3
  },
  {
    description: "0.38 lbs (0.17 kg) Carafa Special II (1.0%)",
    recipe_id: 3
  },
  {
    description: "6.6 lb (2.99 kg) Muntons light malt extract",
    recipe_id: 4
  },
  {
    description: "2.0 lb (0.9 kg) 7 EBC plain extra-light dry malt extract",
    recipe_id: 4
  },
  {
    description: "11.0 lb (5 kg) Pilsner Malt",
    recipe_id: 5
  },
  {
    description: "1.5 lb (680 g) Munich Malt",
    recipe_id: 5
  },
  {
    description: "0.75 lb (340 g) Caramunich®",
    recipe_id: 5
  },
  {
    description: "8.5 lb (3.9 kg) Pale 2-Row Malt",
    recipe_id: 6
  },
  {
    description: "8.0 oz (227 g) Munich malt",
    recipe_id: 6
  },
  {
    description: "4.0 oz (113 g) Wheat malt",
    recipe_id: 6
  },
  {
    description: "8.0 oz (227 g) CaraVienne® malt",
    recipe_id: 6
  },
  {
    description: "4.0 oz (113 g) 20° L crystal malt",
    recipe_id: 6
  },
  {
    description: "4.0 oz (113 g) Victory malt",
    recipe_id: 6
  }
])

Yeast.destroy_all

Yeast.create([
  {
    description: "Wyeast 3787 Belgian Trappist Yeast",
    recipe_id: 1
  },
  {
    description: "White Labs WLP001 California Ale Yeast or Wyeast 1056 America Ale Yeast",
    recipe_id: 2
  },
  {
    description: "0.5 tsp yeast nutrient (10 min)",
    recipe_id: 3
  },
  {
    description: "White Labs WLP530 Abbey Ale",
    recipe_id: 3
  },
  {
    description: "Wyeast No. 1214 Belgian ale yeast",
    recipe_id: 4
  },
  {
    description: "Belgian-style ale strain, such as WLP 515 or Wyeast 3522",
    recipe_id: 5
  },
  {
    description: "White Labs WLP051 California V Ale, Wyeast 1272 American Ale II, Safale US-05 Ale, or Danstar BRY-97",
    recipe_id: 6
  }
])

Misc.destroy_all

Misc.create ([
  {
    description: "0.5 lb (0.23 kg) corn sugar",
    recipe_id: 1
  },
  {
    description: "0.25 tsp bitter orange peel",
    recipe_id: 1
  },
  {
    description: "0.25 tsp sweet orange peel",
    recipe_id: 1
  },
  {
    description: "0.25 coriander",
    recipe_id: 1
  },
  {
    description: "Irish Moss",
    recipe_id: 1
  },
  {
    description: "0.75 lb (340 g) dextrose (corn) sugar",
    recipe_id: 2
  },
  {
    description: "2.0 lbs (0.9 kg) Beet/table sugar (5.1%)",
    recipe_id: 3
  },
  {
    description: "2.0 lbs (0.9 kg) Pomegranate molasses (5.1%)",
    recipe_id: 3
  },
  {
    description: "1 whirlfloc (10 min)",
    recipe_id: 3
  },
  {
    description: "0.5 g Cardamom seed (0 min)",
    recipe_id: 3
  },
  {
    description: "1.0 lb (0.45 kg) Belgian candy sugar",
    recipe_id: 4
  },
  {
    description: "0.25 cup (59 mL) maple syrup",
    recipe_id: 4
  },
  {
    description: "5.0 oz (142 g) corn sugar to carbonate",
    recipe_id: 4
  },
  {
    description: "0.5 lb (227 g) cane sugar",
    recipe_id: 5
  },
  {
    description: "8.0 oz (227 g) Orange blossom honey (added during the boil)",
    recipe_id: 6
  }
])

Direction.destroy_all

Direction.create([
  {
    description: "Mash grains at 152°F (66°C) for 90 minutes.",
    recipe_id: 1
  },
  {
    description: "Sparge with 168°F (75.5°C) water.",
    recipe_id: 1
  },
  {
    description: "Add sugars, bring to boil, boil for 90 minutes adding hops as indicated.",
    recipe_id: 1
  },
  {
    description: "Add Irish moss at last 15 minutes of boil.",
    recipe_id: 1
  },
  {
    description: "Add spices at last 10 minutes of boil. Cool, aerate and pitch large starter of yeast. Pitch yeast at 72°F (22°C).",
    recipe_id: 1
  },
  {
    description: "Rack to secondary when specific gravity reading is 1.050.",
    recipe_id: 1
  },
  {
    description: "To make this Pliny the Elder clone, mash grains at 151-152°F (66-67°C) for an hour or until starch conversion is complete. Mash out at 170°F (77°C) and sparge. Collect 8 gallons (30 L) of runoff, stir in dextrose and bring to a boil.",
    recipe_id: 2
  },
  {
    description: "Add hops as indicated in the recipe.",
    recipe_id: 2
  },
  {
    description: "After a 90 minute boil, chill wort to 67°F (19°C) and transfer to a fermenter. Pitch two packages of yeast or a yeast starter and aerate well.",
    recipe_id: 2
  },
  {
    description: "Ferment at 67°F (19°C) until fermentation activity subsides, then rack to secondary.",
    recipe_id: 2
  },
  {
    description: "Add first set of dry hops on top of the racked beer and age 7-9 days, then add the second set. Age five more days then bottle or keg.",
    recipe_id: 2
  },
  {
    description: "Make a 1.5 L yeast starter with White Labs WLP530 Abbey Ale using a stir plate.",
    recipe_id: 3
  },
  {
    description: "Saccharification Rest: 60 minutes at 152°F (67°C).",
    recipe_id: 3
  },
  {
    description: "Batch sparged with 180°F (82°C). Collect 9 gallons of 1.092 runnings including 2 lbs of table sugar added to the boil, plus 1 gallon of final runnings (boiled separately on the stove).",
    recipe_id: 3
  },
  {
    description: "Chill to 63°F (17°C), 60 seconds of oxygen. Pitch the starter. Leave at 63°F (17°C) to ferment. Warm to 70°F (21°C) after 3 days.",
    recipe_id: 3
  },
  {
    description: "Rack to secondary, add pomegranate molasses.",
    recipe_id: 3
  },
  {
    description: "When fermentation is complete, package as desired aiming for 2.4 vol of CO2.",
    recipe_id: 3
  },
  {
    description: "Primary fermentation for 10 days at 70-72° F (21-22° C).",
    recipe_id: 4
  },
  {
    description: "Secondary fermentation for 30 days at 70-72° F (21-22° C).",
    recipe_id: 4
  },
  {
    description: "Mash at a lower temperature 148-150°F (64-66°C). Souring: After the mash, bring the wort to a boil, then cool to 100°F (38°C). Inoculate using either a commercial culture of Lactobacillus or a homemade sour starter (see below) culture as describe below.",
    recipe_id: 5
  },
  { description: "Try to keep the wort warm during the souring period (placing the wort back into a picnic cooler-type mash tun works great for this). Let it sour for 18 hours, then boil 90 minutes, adding your bittering hops at 60 minutes.",
    recipe_id: 5
  },
  {
    description: "Ferment at around 68°F (20°C).",
    recipe_id: 5
  },
  {
    description: "Sour Starter: Three days before brew day, take a small amount of malt and add it to a solution of warm water and sugar (malt extract or table sugar works). A few tablespoons of malt placed in a pint of low gravity sugar solution (around 1.030 OG) should be a good sour starter for a 5 gallon (18.93 L) batch. Allow it to sit for three days at around 100°F (38°C), which helps create a better culture than simply adding malt to the wort or mash. It utilizes the pH tolerances of different bacteria to isolate the good ones from the bad ones. By the third day, your sour starter is ready to be used to inoculate the wort. Continue with your brew day as you normally would.",
    recipe_id: 5
  },
  { description: "Mash grains at 152° F (67° C) for 60 minutes. Mash out at 168° F (76° C), with pre-boil wort volume of 6.5 g (25 L). Bring to a rolling boil for 75 minutes, addhops at specified intervals from end of boil. Chill wort to 68° F (20° C) and pitch yeast.",
    recipe_id: 6
  },
  {
    description: "After 9 days, rack to secondary fermenter and dry hop.",
    recipe_id: 6
  },
  {
    description: "Let rest another 9 days at 68° F (20° C).",
    recipe_id: 6
  },
  {
    description: "Keg at 2.5 volumes of CO2 or bottle condition with 4 oz (113 g) corn sugar.",
    recipe_id: 6
  }
])
