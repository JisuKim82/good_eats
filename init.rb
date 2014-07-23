#Launch this ruby file from the command line to get started.


APP_ROOT = File.dirname(__FILE__)

#require "#{APP_ROOT}/lib/guide"
require File.join(APP_ROOT, "lib", "guide")

guide = Guide.new('restaurants.txt')
guide.launch!