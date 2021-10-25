#version limpia 
class Usuario
    attr_accessor :nombre, :direccion
end
usuario1 = Usuario.new
usuario1.nombre = "Coco"
usuario1.direccion = "av siempreviva"
puts usuario1.nombre
puts usuario1.direccion