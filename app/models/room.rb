class Room < ActiveRecord::Base
  belongs_to :type
  belongs_to :reservation
  before_create :add_status
  paginates_per 10

  private
    def add_status
      self.status = 'Available'
    end
end
