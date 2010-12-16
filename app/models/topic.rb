class Topic < ActiveRecord::Base
  belongs_to :evaluation
  has_many :subtopics, :dependent => :destroy
  #has_many :ratings, :dependent => :destroy
  accepts_nested_attributes_for :subtopics, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true
end
