class Section < ActiveRecord::Base
  belongs_to :pages
  acts_as_list
  validates :name, presence: true
  validates :content, presence: true
  validates :position, presence: true
end
