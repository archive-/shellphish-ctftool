class Challenge < ActiveRecord::Base
  belongs_to :category

  def ctf
    category.ctf
  end
end
