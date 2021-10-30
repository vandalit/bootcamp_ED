require 'minitest/autorun'

require_relative '26.rb'

class TestOperaciones < Minitest::Test

    
    def test_importes_con_impuestos
        n = Operaciones.new
        assert_equal 11.9, n.calcula_importe_impuesto(10)
    end

    def test_suma
        n = Operaciones.new
        assert_equal 7, n.suma(5,2)
    end

    def test_numero_decimal 
        n = Operaciones.new
        assert_instance_of Float, n.dividir(5,2)
    end

    def test_dividir
        n = Operaciones.new
        assert_equal 2, n.dividir(4,2)
    end

    def test_dividir_valida_cero
        assert_raises ZeroDivisionError do 
            n = Operaciones.new
            n.dividir(4,0)
        end
    end

    def test_valida_existe_multiplicar
        n = Operaciones.new
        assert_respond_to n, "multiplicar"
    end

    def test_valida_resultado_multiplicar
        skip "Prueba pendiente de realizar"
    end
end