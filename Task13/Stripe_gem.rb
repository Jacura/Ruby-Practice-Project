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














=begin

*********************** Spree  **************************


Spree is a headless open source e-commerce platform for global brands.
Spree is an open-source ecommerce platform built with Ruby on Rails and launched back in 2007.
Spree is an open source E-commerce platform for Rails 6 with a modern UX, optional PWA frontend, 
REST API, GraphQL, several official extensions and 3rd party integrations.


Spree consists of several different gems (modules), each of which are maintained 
in a single repository and documented in a single set of online documentation.

-- spree_api (REST API v2 with JavaScript / TypeScript SDK and REST API v1)
-- spree_graphql (GraphQL API - coming soon)
-- spree_frontend (mobile-first, blazing fast and customizable storefront)
-- spree_backend (feature rich Admin Panel)
-- spree_cmd (command-line tools for developers)
-- spree_core (models, services & mailers, the basic components of Spree)
-- spree_sample (sample data for demo purposes)


Key features --->

Single brand or multiple brands
Multi-language and multi-currency
Single vendor or multi-vendor
Any 3rd party integrations
React or Vue Storefront available
Limitless storefront customization
Modern API with pre-built SDKs
Runs anywhere


=end