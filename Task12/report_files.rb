=begin

**************** PDF **************
Prawn: Fast, Nimble PDF Generation For Ruby------->>>>>
Prawn is a pure Ruby PDF generation library that provides a lot of great functionality 
while trying to remain simple and reasonably performant. Here are some of the important
features we provide:

- Vector drawing support, including lines, polygons, curves, ellipses, etc.
- xtensive text rendering support, including flowing text and limited inline formatting options.
- Support for both PDF builtin fonts as well as embedded TrueType fonts
- A variety of low level tools for basic layout needs, including a simple grid system
- PNG and JPG image embedding, with flexible scaling options
- Security features including encryption and password protection
- Tools for rendering repeatable content (i.e headers, footers, and page numbers)


****************** CSV *****************
This library provides a complete interface to CSV files and data. 
It offers tools to enable you to read and write to and from Strings or IO objects, as needed.

Installation :
gem install csv

require "csv"

CSV.foreach("path/to/file.csv") do |row|
  # use row here...
end




*******************   Zip file **************
Rubyzip is a ruby library for reading and writing zip files.
require 'rubygems'
require 'zip'

folder = "Users/me/Desktop/stuff_to_zip"
input_filenames = ['image.jpg', 'description.txt', 'stats.csv']

zipfile_name = "/Users/me/Desktop/archive.zip"

Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
  input_filenames.each do |filename|
    # Two arguments:
    # - The name of the file as it will appear in the archive
    # - The original file, including the path to find it
    zipfile.add(filename, folder + '/' + filename)
  end
  zipfile.get_output_stream("myFile") { |os| os.write "myFile contains just this" }
end




=end