=begin

*********************************  Stripe  Gem  ***********************
Stripe is the easiest way to accept payments online.
The Stripe Ruby library provides convenient access to the Stripe API from applications written 
in the Ruby language. It includes a pre-defined set of classes for API resources.

The library also provides other features. For example:
- Easy configuration path for fast setup and use.
- Helpers for pagination.
- Built-in mechanisms for the serialization of parameters according to the expectations of Stripe's API.



The library needs to be configured with the account's secret key which is available in your Stripe Dashboard. 
Set Stripe.api_key to its value:


require "stripe"
Stripe.api_key = "sk_test_..."

# list charges
Stripe::Charge.list()

# retrieve single charge
Stripe::Charge.retrieve(
  "ch_18atAXCdGbJFKhCuBAa4532Z",
)

=end




=begin

******************************** Date methods  **********************

=end



require "active_support"

require "active_support/core_ext/date/calculations"
# || require "active_support/all"

d = Date.new(2010, 5, 8)     # => Sat, 08 May 2010
puts d.wednesday?         # => false

puts d.at_beginning_of_month