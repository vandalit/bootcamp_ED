class Usuario
    attr_reader :nombre
    attr_writer :nombre
    def initialize(nombre)
        @nombre = nombre
    end

end
#con attr reader y writer nos deshacemos de los getters y los setters

usuario1 = Usuario.new("Coco")
puts usuario1.nombre
usuario1.nombre = "Nehuen"
puts usuario1.nombre