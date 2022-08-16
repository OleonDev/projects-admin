class Service < ApplicationRecord
    belongs_to :project
    has_many :payments
    enum status: {waiting: 0, running: 1, finished:2, canceled:4}

end
