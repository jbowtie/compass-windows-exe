#

require 'rubygems'
require 'compass'
require 'susy'
require 'fssm'
require 'compass-normalize'

version = ">= 0"

if ARGV.first
  str = ARGV.first
  str = str.dup.force_encoding("BINARY") if str.respond_to? :force_encoding
  if str =~ /\A_(.*)_\z/
    version = $1
    ARGV.shift
  end
end

gem 'compass', version
load Gem.bin_path('compass', 'compass', version)
