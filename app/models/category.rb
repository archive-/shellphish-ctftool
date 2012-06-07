class Category < ActiveRecord::Base
  belongs_to :ctf
  has_many :challenges
end
