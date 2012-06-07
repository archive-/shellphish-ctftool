class Ctf < ActiveRecord::Base
  attr_accessible :name, :start_at, :end_at

  validates :name, presence: true
  validates_presence_of :start_at, :end_at

  has_many :categories
end
