#
# Copyright (c) 2013 by Lifted Studios.  All Rights Reserved.
#

module Alfred
  # Represents a list of Alfred items.
  class Items
    # Initializes an empty list.
    def initialize
      @items = []
    end

    # Add an item to the list.
    def <<(item)
      @items << item
    end

    # Returns a debug visualization of the list.
    def inspect
      "[#{ @items.map { |i| i.inspect }.join(', ') }]"
    end

    # Output items in XML format for display by Alfred.
    def to_s
      output = "<items>\n"

      @items.each do |item|
        output << item.to_s
      end

      output << "</items>\n"
    end
  end
end
