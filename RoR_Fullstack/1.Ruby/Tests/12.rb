class Usuario
    def initialize(nombre)
        @nombre = nombre
    end
    def get_name
        @nombre
    end
    def set_name=(nombre)
        @nombre = nombre
    end
end
#probando el concepto the getters y setters

usuario1 = Usuario.new("Coco")
puts usuario1.get_name
usuario1.set_name = "Nehuen"
puts usuario1.get_name
