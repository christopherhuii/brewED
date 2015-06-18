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

Recipe.create(
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
)

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
])

Yeast.destroy_all

Yeast.create([
  {
    description: "Wyeast 3787 Belgian Trappist Yeast",
    recipe_id: 1
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
  }
])
