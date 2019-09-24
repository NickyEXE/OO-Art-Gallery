require_relative '../config/environment.rb'

vincent = Artist.new('vincent', 65)
bubbles = Artist.new('bubbles', 3)
leo = Artist.new('leo', 7)
john = Artist.new('john', 5)

ny = Gallery.new('nice place', 'new york')
paris = Gallery.new('fancy place', 'paris')
denver = Gallery.new('meh', 'denver')
jazz = Gallery.new('jazzy town', 'dayton ohio')

# name, price, gallery, artist
painting1 = Painting.new('a duck', 50, jazz, vincent)
painting2 = Painting.new('a duck on a boat', 350, jazz, bubbles)
painting3 = Painting.new('a boat on sea of ducks', 500, ny, john)
painting4 = Painting.new('a ship', 5030, denver, bubbles)

puts "Painting.all work?"
puts Painting.all.length === 4
puts "Artist.all work?"
puts Artist.all.length === 4
puts "Gallery.all work?"
puts Gallery.all.length === 4

puts "artist.paintings work?"
puts vincent.paintings.length === 1
puts bubbles.paintings.length === 2

puts "artist.galleries works?"
puts vincent.galleries === [jazz]
puts bubbles.galleries.length === 2

puts "Does .cities work"
puts john.cities === ["new york"]

puts "Does .total_experience work?"
puts Artist.total_experience === 80

puts "Does most prolific work"
puts Artist.most_prolific === bubbles

puts "leo has no paintings before:"
puts leo.paintings.length === 0

dogs = leo.create_painting("Dogs Playing Poker", 2000, ny)
puts "leo has painted a masterpiece:"
puts leo.paintings.include?(dogs)
puts leo.paintings.length === 1

puts "Total price works:"
puts Painting.total_price === 7930

puts "gallery.paintings works:"
puts jazz.paintings.length == 2

puts "gallery.artists works:"
puts ny.artists === [john, leo]

puts "gallery.artist_names works:"
puts ny.artist_names === ["john", "leo"]

puts "does this program sufficiently respect Dogs Playing Poker"
puts ny.most_expensive_painting.title === "Dogs Playing Poker"

# binding.pry

puts "Bob Ross rules."
