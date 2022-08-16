module ProjectsHelper

    def self.servicesTotal
        Service.active.sum(:price)
    end

    def self.count
        Project.count
    end

    def self.paymentsTotal
        Payment.sum(:amount)
    end

    def self.paymentsCount
        Payment.count
    end
end
