class Subject < ActiveRecord::Base
  has_many :attendances, :dependent => :destroy
end
