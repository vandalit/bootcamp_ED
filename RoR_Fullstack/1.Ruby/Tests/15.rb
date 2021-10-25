class Usuario
    attr_accessor :nombre
    attr_reader :direccion
    def set_direccion (direccion)
        @direccion = direccion
    end
end
usuario1 = Usuario.new
usuario1.nombre = "Coco"
usuario1.set_direccion("av siempreviva")
puts usuario1.nombre
puts usuario1.direccion
#ejemplo sin initialize, en vez de enviar el parametro desde el New, lo escribes en una linea a parte.
#el parametro a sido creado en accesor. ojo con la sutileza. 
#tambien, ojo con el tratamiento de direccion, para un setter por metodo y getter por attr.