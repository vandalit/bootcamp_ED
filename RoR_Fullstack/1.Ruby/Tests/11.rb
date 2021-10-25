class Usuario
    def initialize(nombre)
        @nombre = nombre
        puts "me inicializé"
        puts nombre.object_id 
        puts @nombre.object_id
        puts "(...)"
    end
    def get_name
        @nombre
    end

end

usuario1 = Usuario.new("Coco")
puts usuario1.object_id
puts "(...)"
puts usuario1.get_name