class Facts

    attr_accessor :fact

    @@all = []

    def initialize(fact)
        @fact = fact
        @@all << self
    end

    def self.all
        @@all
    end
end