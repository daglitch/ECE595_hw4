class Subtopic < ActiveRecord::Base
    belongs_to :topic
    has_many :ratings, :dependent => :destroy
    accepts_nested_attributes_for :ratings, :reject_if => lambda { |a| a[:content].blank?}, :allow_destroy => true
end
