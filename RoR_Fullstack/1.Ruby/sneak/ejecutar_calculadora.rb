require_relative "calculadora"

respuesta = "s"
while respuesta == "s" do
    operacion = Calculadora.get_operation
    numero1 = Calculadora.get_number1
    numero2 = Calculadora.get_number2
    puts Calculadora.operacion(operacion, numero1, numero2)
    puts "Desea otra operación? S/N " 
    respuesta = gets.chomp
end


    




