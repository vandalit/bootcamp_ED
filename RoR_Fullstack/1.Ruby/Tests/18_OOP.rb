class Usuario
    attr_accessor :nombre, :direccion
    def cualquier_cosa (algo)
        @valor = algo
        @valor << " rulez!"
    end
end
usuario1 = Usuario.new
usuario1.nombre = "Coco"
usuario1.direccion = "av siempreviva"
puts usuario1.nombre
puts usuario1.direccion
print "agregue algo:: "
cosa = gets.chomp
puts usuario1.cualquier_cosa(cosa)