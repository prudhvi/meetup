require "meetup/version"

require 'httparty'
module Meetup

  Dir[File.dirname(__FILE__) + '/meetup/*.rb'].each do |file|
    require file
  end
end
