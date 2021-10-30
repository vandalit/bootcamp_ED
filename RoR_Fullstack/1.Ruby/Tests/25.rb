#Para representar bloques usamos
# do end => es mas de una instruccion dentro del bloque
# {    } => es solo una instruccion 

def hola
    yield
end

hola {puts "Hola chicos"}
