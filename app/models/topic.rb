class Topic < ActiveRecord::Base
  has_many :lessons
  #has_many :cells
end
