class Page < ActiveRecord::Base
  belongs_to :websites
  has_many :sections
  acts_as_list
  validates :name, presence: true
  validates :link, presence: true
  validates :position, presence: true
end
