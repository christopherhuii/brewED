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
  }
])

Grain.destroy_all

Grain.create([
  {
    description: "13.5 lb (6.12 kg) Pilsener malt",
    recipe_id: 1
  },
  {
    description: "1.0 lb (0.45 kg) aromatic malt",
    recipe_id: 1},
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
  }
])
