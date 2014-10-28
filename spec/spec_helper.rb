$: << File.join(File.dirname(__FILE__), '..', 'lib')
require './lib/Company'
require "codeclimate-test-reporter"
require 'pry' if ENV['APP_ENV'] == 'debug' # add `binding.pry` wherever you need to debug
CodeClimate::TestReporter.start
