class Website < ActiveRecord::Base
  has_many :pages
  validates :name, presence: true
  validates :theme, presence: true
end
