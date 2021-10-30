class Operaciones

    def calcula_importe_impuesto(num)
        iva = num * 0.19
        importe = num + iva
    end

    def suma(num1,num2)
        num1 + num2
    end

    def dividir(num1,num2)
        raise ZeroDivisionError if num2 == 0
        num1 = num1.to_f
        num2 = num2.to_f
        num1 / num2
    end

    def multiplicar
        
    end
end