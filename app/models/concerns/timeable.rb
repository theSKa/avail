module Timeable
  extend ActiveSupport::Concern

  included do
    validates_presence_of :beginning, :ending
    validate :reversed
  end

  def reversed
    errors.add(:beginning, 'cannot be later than ending') if beginning && ending && beginning > ending
  end
end
