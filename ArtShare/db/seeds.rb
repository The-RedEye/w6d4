# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
u1 = User.create!(username: 'tristan')
u2 = User.create!(username: 'snigdha')
u3 = User.create!(username: 'michael')

#Artworks
a1 = Artwork.create!(title: 'panda', image_url: '3', artist_id: u1.id)
a2 = Artwork.create!(title: 'plant', image_url: 'street', artist_id: u2.id)
a3 = Artwork.create!(title: 'bridge', image_url: 'water', artist_id: u2.id)

#ArtworkShares 
as1 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: u1.id)
as2 = ArtworkShare.create!(artwork_id: a2.id, viewer_id: u1.id)
as3 = ArtworkShare.create!(artwork_id: a3.id, viewer_id: u3.id)

#Comments 
c1 = Comment.create!(commenter_id: 1, artwork_id: 3, body: 'I miss SF')
c2 = Comment.create!(commenter_id: 2, artwork_id: 2, body: 'I like the colors')
c3 = Comment.create!(commenter_id: 3, artwork_id: 1, body: "I don't like the colors")