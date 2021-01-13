class Broadcast < ApplicationRecord
  belongs_to :chanel
  validates_presence_of :name
  validates_numericality_of :duration, :message=>"Error Message"
end
