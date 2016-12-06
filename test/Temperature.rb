require 'minitest/autorun'
require 'temperature'

class TemperatureTest < Minitest::Test

    def test_to_fahrenheit
        temperature = Temperature.new(0)
        assert_equal(32, temperature.to_fahrenheit, "0 celsius does not equal 32 farhenheit")
    end

    def test_100_celsius_to_fahrenheit
        temperature = Temperature.new(100)
        assert_equal(212, temperature.to_fahrenheit)
    end

    def test_input_is_numeric
        assert_throws Exception do
            temperature = Temperature.new("hello")
        end
    end
    def test_to_kelvin
      temperature = Temperature.new(0)
      assert_equal(273.15, temperature.to_kelvin, "0 celsius does not equal 273,15 kelvin")
    end

    def test_42_celsius_to_kelvin
        temperature = Temperature.new(42)
        assert_equal(313.15, temperature.to_kelvin)
    end
end
