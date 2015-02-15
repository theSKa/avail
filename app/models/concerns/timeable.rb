module Timeable
  extend ActiveSupport::Concern

  included do
    validates_presence_of :beginning, :ending
  end
end
