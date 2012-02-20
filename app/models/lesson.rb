class Lesson < ActiveRecord::Base
  belongs_to :topic
  #has_and_belongs_to_many :prereqs
  #belongs_to :row
  
  #accepts_nested_attributes_for :prereqs, :allow_destroy => :true,
 #   :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
