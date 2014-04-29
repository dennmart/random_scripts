#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

# Scrapes the Emoji Cheat Sheet website, grabs one randomly and puts it in
# the clipboard for easy pasting anywhere that allows emoji!
doc = Nokogiri::HTML(open("http://www.emoji-cheat-sheet.com/"))
emoji = doc.css('.name')
IO.popen('pbcopy', 'w') { |f| f << ":#{emoji.to_a.sample.text}:" }
puts "Copied to clipboard!"
