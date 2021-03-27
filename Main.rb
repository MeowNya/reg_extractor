#! /usr/bin/env ruby

__author__ = 'MeowNya'

require 'open-uri'


url = 'https://ru.wikipedia.org/wiki/Assassin%E2%80%99s_Creed_Chronicles'
html = URI.open(url).read

pattern = /2\d{3}/
numbers = html.scan pattern
numbers = numbers.uniq.sort
puts numbers.join(', ')
