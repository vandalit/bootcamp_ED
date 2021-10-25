class Usuario
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end

end
#con attr accessor tengo en una funcion attr reader y writer

usuario1 = Usuario.new("Coco")
puts usuario1.nombre
usuario1.nombre = "Nehuen"
puts usuario1.nombre