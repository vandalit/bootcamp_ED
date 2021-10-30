class Calculadora    

    def self.get_operation
        puts "Esta es una calculadora basica"
        puts "** Para sumar digite 1 ***"
        puts "** Para restar digite 2 ***"
        puts "** Para dividir digite 3 ***"
        puts "** Para multiplicar digite 4 ***"
        gets.chomp.to_i
    end

    def self.get_number1
        puts "Ingrese el primer numero "
        gets.chomp.to_i
    end

    def self.get_number2
        puts "Ingrese el segundo numero"
        gets.chomp.to_i
    end

    def self.operacion(operacion, numero1, numero2)
        if operacion == 1
            @res = numero1 + numero2
            "El resultado es #{@res}"
        elsif operacion == 2
            @res = numero1 - numero2
            "El resultado es #{@res}"
        elsif operacion == 3
            @res = numero1 / numero2
            "El resultado es #{@res}"
        elsif operacion == 4
            @res = numero1 * numero2
            "El resultado es #{@res}"
        else "No se puede establecer su operacion. Intente nuevamente"
        end
    end
end
