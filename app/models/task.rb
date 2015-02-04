class Task < ActiveRecord::Base
  validates :name, presence: true
  validates :complete, inclusion: { in: [true, false] }

  

  after_initialize :set_complete

  def set_complete
    if self.complete == nil
      self.complete = false
    else
      self.complete
    end
  end  
end
