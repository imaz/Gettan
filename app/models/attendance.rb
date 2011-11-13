class Attendance < ActiveRecord::Base
  belongs_to :school_day
  belongs_to :subject
end
