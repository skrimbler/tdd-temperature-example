
class Temperature
    attr_accessor :temperature

    FAHRENHEIT_OFFSET = 32
    FAHRENHEIT_SLOPE = Rational(9,5)

    def initialize temperature
        throw Exception unless temperature.kind_of? Numeric
        @temperature = temperature
    end

    def to_fahrenheit
        FAHRENHEIT_OFFSET + temperature * FAHRENHEIT_SLOPE
    end

end
