require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/week-3-assessment-yellowpages.sqlite3")
