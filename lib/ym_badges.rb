require 'ym_core'
require 'ym_users'
require "ym_badges/engine"

module YmBadges
end

Dir[File.dirname(__FILE__) + '/ym_badges/models/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/ym_badges/controllers/*.rb'].each {|file| require file }