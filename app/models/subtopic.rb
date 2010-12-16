class Subtopic < ActiveRecord::Base
    belongs_to :topic
    #has_many :ratings
    has_many :ratings, :dependent => :destroy
    accepts_nested_attributes_for :ratings, :allow_destroy => true
end
