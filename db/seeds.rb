# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Collection.create(name:"men")
Collection.create(name:"women")
Collection.create(name:"kids")
Collection.create(name:"new")

Item.create(name:"Raindrop Shirt",price:19.99)
Item.create(name:"Raindrop Skirt",price:29.99)
Item.create(name:"Raindrop Sweater",price:39.99)
Item.create(name:"Raindrop Kid Hoodie",price:19.99)

CollectionItem.create(collection_id:1,item_id:1)
CollectionItem.create(collection_id:2,item_id:1)
CollectionItem.create(collection_id:2,item_id:2)
CollectionItem.create(collection_id:3,item_id:4)
CollectionItem.create(collection_id:4,item_id:3)
CollectionItem.create(collection_id:5,item_id:4)