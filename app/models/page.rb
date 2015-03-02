class Page < ActiveRecord::Base
  belongs_to :websites
  has_many :sections
  acts_as_list
end
