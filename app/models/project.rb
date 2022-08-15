class Project < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :category

    after_initialize :set_defaults

    def set_defaults
        self.start_date = Time.now
    end
end
