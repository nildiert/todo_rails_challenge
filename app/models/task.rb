class Task < ApplicationRecord
    before_create :default_values

    scope :completed_tasks, -> { where(status: true) }
    scope :incompleted_tasks, -> { where(status: false) }

    validates :status, :inclusion => { :in => [true, false] }
    validates :name, presence: true

    
  
    protected
  
    def default_values
      self.status ||= false
    end  
end
