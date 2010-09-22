begin
  require 'will_paginate'
rescue LoadError => e
  $stderr.puts %(
  *************************************************************************************************
  * gem will_paginate is missing                                                                  *
  *************************************************************************************************
  )
end

module AdminData
end

if Rails.version >= '3.0'
  require 'admin_data/railtie'
else
  raise "Please see documentation at http://github.com/neerajdotname/admin_data to find out how to use this gem with rails 2.3"
end

# move date_validation to inside admin_data
require 'admin_data_date_validation'

require 'admin_data/helpers'
require 'admin_data/chelper'
require 'admin_data/compatibility'
require 'admin_data/settings'
require 'admin_data/util'

AdminData::Config.initialize_defaults
ActionView::Base.send :include, AdminData::Helpers