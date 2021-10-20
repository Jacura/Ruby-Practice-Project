
# Geocoder gem

=begin
Geocoder (Ruby) is a geocoding library for Ruby. Geocoding helps to enhance
webpages by presenting location relevant information to the user.


In its simplest form, Geocoder takes an address and searches 
for its latitude/longitude coordinates:
example:

results = Geocoder.search("Paris")
results.first.coordinates
# => [48.856614, 2.3522219]  # latitude and longitude

The reverse is possible too. Given coordinates, it finds an address:
results = Geocoder.search([48.856614, 2.3522219])
results.first.address
# => "Hôtel de Ville, 75004 Paris, France"

You can also look up the location of an IP addresses:
results = Geocoder.search("172.56.21.89")
results.first.coordinates
# => [30.267153, -97.7430608]
results.first.country
# => "United States"

=end




# extends in ruby
=begin

In simple words, the difference between include and extend is that ‘include’ is 
for adding methods only to an instance of a class and ‘extend’ is for adding methods 
to the class but not to its instance.



=end



