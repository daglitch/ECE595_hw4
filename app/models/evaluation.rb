class Evaluation < ActiveRecord::Base
  #acts_as_rateable
  has_many :topics, :dependent => :destroy
  accepts_nested_attributes_for :topics, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true
end
