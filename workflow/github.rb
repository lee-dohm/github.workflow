#!/usr/bin/env ruby
# encoding: utf-8

#
# Copyright (c) 2013 by Lifted Studios.  All Rights Reserved.
#

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require 'bundle/bundler/setup'
require 'alfred'

query = ARGV[0]

Alfred.with_friendly_error do |alfred|
  fb = alfred.feedback

  case query
  when ''
    fb.add_item({
      :uid => 'github',
      :title => 'Open Github',
      :arg => 'https://github.com'
      })
  when %r(\w+/\w+)
    fb.add_item({
      :uid => 'github',
      :title => "Open Github project: #{query}",
      :arg => "https://github.com/#{query}"
      })
  else
    fb.add_item({
      :uid => 'github',
      :title => "Search Github for \"#{query}\"",
      :arg => "https://github.com/search?q=#{query}"
      })
  end

  puts fb.to_xml
end
