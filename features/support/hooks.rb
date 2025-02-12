
require 'yaml'

Before do |scenario|
    driver_init
  $logger = Logger.new(STDOUT)
end