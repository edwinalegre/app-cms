class Section < ActiveRecord::Base
  belongs_to :pages
  acts_as_list
end
