class Evaluation < ActiveRecord::Base
  has_many :topics, :dependent => :destroy
  accepts_nested_attributes_for :topics
end
