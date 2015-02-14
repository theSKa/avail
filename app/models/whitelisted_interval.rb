class WhitelistedInterval < ActiveRecord::Base
  validates_presence_of :start_time, :end_time
end
