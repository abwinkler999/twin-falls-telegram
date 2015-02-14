# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.find_or_create_by(name: "Twin Falls")
Tag.find_or_create_by(name: "Bright Plain")
Tag.find_or_create_by(name: "Elliotville")
Tag.find_or_create_by(name: "Spencerville")
Tag.find_or_create_by(name: "Samshire")
Tag.find_or_create_by(name: "Abroad")
Tag.find_or_create_by(name: "Exploration")
Tag.find_or_create_by(name: "Construction")
Tag.find_or_create_by(name: "Strife")
Personal.find_or_create_by(body: "Beware the night of the full moon.")
Personal.find_or_create_by(body: "Fine tags for sale.  Ed's Tags, Night City.  This is the only genuine.  Accept no substitute.")
Personal.find_or_create_by(body: "Found: a grey mule wandering near Witch Haven Station.  Owner can find same at my bakery.", signed: "Fredergar Panning")
Personal.find_or_create_by(body: "Honest jobs for honest men - stop dwarven labor NOW!")
Personal.find_or_create_by(body: "Has anyone considered whether the raiders were merely dressed as Torr?", signed: "Concerned")
Personal.find_or_create_by(body: "The Museum of Heraldry will be closing early on Tuesday for cleaning.")
Personal.find_or_create_by(body: "Happy Birthday, Fred!", signed: "Ziggy and Jay")
Article.find_or_create_by(title: "Sample Post", text: "Nobis nostrud patrioque his id, fierent facilisi qui ad. Sint altera maluisset nec et, porro ubique conceptam id nam.", user: User.first)
Article.find_or_create_by(title: "Another Post", text: "Ad consul quidam invidunt ius. Rebum laudem petentium mea ea. Mei ne magna facete, qui epicuri scribentur ex. Quod eruditi mei at, falli viris commune no quo.", user: User.first)
Article.find_or_create_by(title: "Further News", text: "Ei sit deleniti apeirian appellantur, cum simul omnesque ea. Eos ut ancillae mediocrem disputationi, at purto tollit liberavisse vix.", user: User.first)
Article.find_or_create_by(title: "Additional News", text: "Debet invenire definitionem id eum, ullum sapientem pri ne, mnesarchum complectitur per ea. Vis partem facilisis conclusionemque ad, recusabo argumentum eos in.", user: User.first)
