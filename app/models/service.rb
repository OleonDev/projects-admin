class Service < ApplicationRecord
    belongs_to :project
    has_many :payments
    enum status: {waiting: 0, active: 1, complete:2, canceled:3}

    def description
        "#{self.name} #{self.project.name}"
    end
end
