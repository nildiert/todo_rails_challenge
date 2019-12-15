class Task < ApplicationRecord

    scope :completed_tasks, -> { where(status: true) }
    scope :incompleted_tasks, -> { where(status: false) }

    validates :name, presence: true
end
