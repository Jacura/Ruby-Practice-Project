#************************daru-view********************************

=begin

Daru-view (by Ruby Science Foundation) is a plugin gem for Daru; that allows users 
to generate charts using Highcharts 

What makes daru-view different ?

* daru-view is designed for interactive plotting of charts and tables.
  It provide different plotting tools like Nyaplot, HighCharts, GoogleCharts, DataTable.
  So we don’t have to write any JavaScript code from these sites and no need to shift 
  to other language to get charts.

* It can work with any ruby web application framework like Rails/Sinatra/Nanoc/Hanami.
   
* daru-view can generate chart images to download and save.

* daru-view adapters googlecharts, highcharts are able to geneate 3D charts as well.

* Table have some main features like pagination, search and many more to be added.
  It is designed to load large data set smoothly.


=end



#************************chartkick********************************

=begin

Used for : Create beautiful Javascript charts with one line of Ruby.

Add this line to your application's Gemfile:

gem "chartkick"
For Rails 6 / Webpacker, run:

yarn add chartkick chart.js
And in app/javascript/packs/application.js, add:

import "chartkick/chart.js"


######### For Line chart ###############
<%= line_chart User.group_by_day(:created_at).count %>

######### pie chart ###########
<%= pie_chart Yogurt.group(:flavor).count %>

########### Area chart #########
<%= area_chart Visit.group_by_minute(:created_at).maximum(:load_time) %>