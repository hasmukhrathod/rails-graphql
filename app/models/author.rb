class Author < ApplicationRecord
  
  validates :first_name, :last_name, :dob, presence: true
  
  def full_name
    [self.first_name, self.last_name].compact.join(" ")
  end
  
  def coordinates
    [rand(50), rand(90)]
  end
end
