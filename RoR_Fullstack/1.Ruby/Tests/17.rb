class Usuario
    attr_accessor :nombre, :direccion
    def cualquier_cosa (algo)
        @valor = algo
        @valor << " salvaje apareció!"
    end
end
usuario1 = Usuario.new
usuario1.nombre = "Coco"
usuario1.direccion = "av siempreviva"
puts usuario1.nombre
puts usuario1.direccion
print "agregue algo (un pokemon):: "
cosa = gets.chomp
puts usuario1.cualquier_cosa(cosa)
# aqui podemos ver en accion los attr, los metodos de clase, y la captura de datos en conjunto
#diferenciando la variable de lectura, como aprametro de envio, 
#en una nueva variable local, a una variable de instancia, que es retornada como valor e impresa.