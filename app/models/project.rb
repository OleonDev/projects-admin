class Project < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :category
    belongs_to :contact
    has_many :services

    after_initialize :set_defaults

    def set_defaults
        self.start_date = Time.now
    end

    def addService service

       # price = PriceHelper.new(self, service)
        due_date = DateTime.now + 365;

        self.services.create(
            name: "#{service} #{self.name}",
            price: 500, #price.getPrice, 
            recurrent: true,
            start_date: DateTime.now, 
            due_date: due_date, 
            status:'active'
        )
    end

end
