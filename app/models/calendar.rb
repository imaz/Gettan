class Calendar < ActiveRecord::Base
  has_many :attendances
end
