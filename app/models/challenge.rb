class Challenge < ActiveRecord::Base
  belongs_to :category

  def ctf
    category.ctf
  end

  def status?(status)
    "active" if self.status == status
  end
end
