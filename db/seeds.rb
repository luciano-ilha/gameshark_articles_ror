# frozen_string_literal: true

# rubocop:disable Layout/LineLength

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Categories
Category.create(name: 'What\'s New', priority: 1)
Category.create(name: 'Action', priority: 2)
Category.create(name: 'Sports', priority: 3)
Category.create(name: 'FPS', priority: 4)
Category.create(name: 'RPG', priority: 5)
Category.create(name: 'Terror', priority: 6)

# Users
User.create(username: 'Luciano', password_digest: '12345')
User.create(username: 'John', password_digest: '12345')
User.create(username: 'Vivian', password_digest: '12345')
User.create(username: 'Carlos', password_digest: '12345')
User.create(username: 'Elie', password_digest: '12345')
User.create(username: 'Gabriel', password_digest: '12345')

# Articles
Article.create(title: "PS5 release date, design, specs and news for Sony's PlayStation 5", text: "The PS5 (or PlayStation 5) is Sony's long-awaited next-generation console. It costs $499.99 / £449.99 / AU$749.95 and will be available from November 12, 2020 (in select markets such as the US and Japan) and November 19, 2020 for the rest of the world, including the UK. Sony is also releasing a Digital Edition of the console, which removes the disc drive and costs $399.99 / £359.99 / AU$599.95.", image: image - url('bannerps5.png'), user_id: 1, category_id: 1)
Article.create(title: 'The Last of Us Part II Is a Dark Game for a Dark Time', text: 'At the climax of The Last of Us, a blockbuster 2013 video game that is superficially about a zombie-fungus apocalypse but is really about the lengths a parent will go to protect a child, you are forced to kill a doctor. This doctor is not a threat. He stands there limply, holding a scalpel, so technically he’s not unarmed — but you’ve got a gun and the gameplay has made it clear, after hours of close fighting, that your character could subdue the man peacefully if he wanted.', image: image - url('lou2.jpg'), user_id: 2, category_id: 1)
Article.create(title: 'Why Uncharted 5 Should Change The Series Protagonist', text: 'It’s been widely suspected that Naughty Dog’s Uncharted 4: A Thief’s End is the long-running franchise’s final installment. The original Uncharted debuted in 2007, and the fourth game came out in 2016. But since then, even though an Uncharted movie is currently in the works, there’s been no word on if or when a fifth game could be happening. Since the games usually release in 2-5 years of each other, it doesn’t bode well that there’s been no news about another title.', image: image - url('uncharted5.png'), user_id: 3, category_id: 2)
Article.create(title: 'PES 2021 Season Update Review', text: "You see, while Konami chips away at its vision for next-gen football arriving next year, PES 2021 arrives as an unapologetic stop-gap release, priced significantly lower than usual (including an additional 20% discount for PES 2020 owners) and offering distinctly fewer new features than you’d expect, even for a franchise with such a relentless annualised release cadence. The graphics? They’re the same. Controls? They're the same too. Menus? Okay, there are some new background pictures, but you can see what I’m trying to say. This is, in no uncertain terms, a collection of updated squads, kits, and whatever Paul Pogba’s latest misadventure with peroxide might be.", image: image - url('pes2021.jpg'), user_id: 4, category_id: 3)
Article.create(title: 'Call of Duty Warzone Season 6 biggest changes', text: "It's finally here, so what are the biggest changes in Warzone Season 6. The Warzone subway metro stations are probably the biggest game-changer but there are also new operators, guns, and an Armored Royale LTM where you drive around the map in a massive truck. Coming up we've got the biggest Warzone Season 6 changes that have arrived with the update.", image: image - url('cod6.png'), user_id: 5, category_id: 4)
Article.create(title: 'Everything we know about Diablo 4', text: "After years of will-they-won't-they, Blizzard finally revealed Diablo 4 at BlizzCon 2019. Diablo 4 had been an open secret for years despite the speedbump that was the Diablo Immortal announcement at BlizzCon 2018. After several successive leaks of increasing credibility in 2019, we finally got an official announcement with trailers, classes, and a bit of gameplay to pore over.", image: image - url('diablo4.jpg'), user_id: 6, category_id: 5)
Article.create(title: 'The Resident Evil 3 Remake Seems Doomed to Fail', text: 'The history of the Resident Evil franchise is one of the most heavily reported stories in gaming. How it started as an attempt to re-create a spooky Nintendo game called Sweet Home; how it became rapidly dominant in a new genre that came to be called survival horror; how it had a subsequent identity crisis and went careening off into action movie nirvana before tumbling into action movie hell.', image: image - url('re3.png'), user_id: 1, category_id: 6)

# rubocop:enable Layout/LineLength
