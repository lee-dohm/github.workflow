#
# Copyright (c) 2013 by Lifted Studios.  All Rights Reserved.
#

module Alfred
  # Represents an Alfred result item.
  class Item
    # Creates a new result item.
    def initialize(arg, title, subtitle = nil, uid = 'github', icon = 'icon.png')
      @arg = arg
      @title = title
      @subtitle = subtitle
      @uid = uid
      @icon = icon
    end

    # Returns a debug representation of the item.
    def inspect
      @title
    end

    # Returns the XML representation of the item.
    def to_s
      output =  "  <item uid=\"#{@uid}\" arg=\"#{@arg}\">\n"
      output << "    <title>#{@title}</title>\n"
      output << "    <subtitle>#{@subtitle}</subtitle>\n" unless @subtitle.nil?
      output << "    <icon>#{@icon}</icon>\n"
      output << "  </item>\n"
    end
  end
end
