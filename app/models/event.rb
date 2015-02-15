class Event < ActiveRecord::Base
  include Timeable
  validates_presence_of :name, :description
end
