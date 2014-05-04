class Page < ActiveRecord::Base
  def self.for name
    where :source => name
  end
end
