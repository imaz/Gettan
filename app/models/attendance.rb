class Attendance < ActiveRecord::Base
  belongs_to :calendar
  belongs_to :subject
end
