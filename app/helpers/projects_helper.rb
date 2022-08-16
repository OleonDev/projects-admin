module ProjectsHelper

    def self.servicesTotal
        Service.running.sum(:price)
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
