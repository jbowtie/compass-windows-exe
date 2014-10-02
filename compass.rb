#!/usr/bin/env ruby
# The compass command line utility

require 'rubygems'
require 'compass'
require 'compass/exec'
require 'susy'
require 'compass-normalize'
require 'sass'

if defined?(Bundler)
  require 'bundler/shared_helpers'
  Bundler.require :assets if Bundler::SharedHelpers.in_bundle?
end

runner = Proc.new do
  Compass::Exec::SubCommandUI.new(ARGV).run!
end

if ARGV.delete("--profile")
  require 'ruby-prof'
  RubyProf.start
  exit_code = runner.call
  result = RubyProf.stop

  # Print a flat profile to text
  printer = RubyProf::FlatPrinter.new(result)
  printer.print(STDERR, 0)
  exit exit_code
else
  exit runner.call || 1
end
