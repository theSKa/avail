class WhitelistedInterval < ActiveRecord::Base

  validate :time_is_not_reversed
  validates_presence_of :start_time, :end_time

  def time_is_not_reversed
    if end_time.present? && start_time.present? && end_time <= start_time
      errors.add(:start_time, 'start_time cannot be set later than end_time') 
    end
  end
end
