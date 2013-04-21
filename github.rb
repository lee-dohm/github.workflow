#
# Copyright (c) 2013 by Lifted Studios.  All Rights Reserved.
#

$LOAD_PATH << File.expand_path('lib', File.dirname(File.dirname(__FILE__)))

require 'alfred'

include Alfred

query = ARGV[0]

items = Items.new

case query
when ''
  items << Item.new("https://github.com", "Open Github")
when %r(\w+/\w+)
  items << Item.new("https://github.com/#{query}", "Open Github project: #{query}")
else
  items << Item.new("https://github.com/search?q=#{query}", "Search Github for \"#{query}\"")
end

puts items.to_s
