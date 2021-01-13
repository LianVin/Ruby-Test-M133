class Chanel < ApplicationRecord
  has_many :broadcasts, dependent: :restrict_with_error
  validates_presence_of :title
end
