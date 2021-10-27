#scope
# publicos  -> public
# privados  -> private
# protegidos -> protected
#howarts
class Howarts
    public
    def caminar_por_pasillos
        puts "caminas por un pasillo"
    end
    def ir_al_baño
        puts "fuista a hacer del 1 y del 2"
    end
    def deambular
        puts "deambulas por el edificio"
    end
end
class CasaElemental < Howarts
    private
    def salon_comun
        puts "diga la contraseña"
    end
end
class Monnitor < CasaElemental
    def guiar
        salon_comun
    end
    def curiosidad
        mirar
    end
    private
    def mirar
        agujero_en_la_pared
    end
    protected
    def agujero_en_la_pared
        puts "fisgón!!!!"
    end
#al parecer, al no haber un metodo dentro de monitor que llame al metodo agujero, 
#este es innaccesible.
end
class Proffesor < Monnitor
    def reconocer
        puts "hola, soy un profesor"
    end
    def taboo 
        puts "seguro que quieres acceder a la seccion prohibida?"
        if gets.chomp == "si"
            seccion_prohibida
        else
            puts "buen estudiante"
        end
    end
    def fisgonear
        puts "quieres fisgonear?"
        if gets.chomp == "si"
            agujero_en_la_pared
            puts "y de un profesor! que verguenza!"
        else
            puts "era de esperar de un profesor!"
        end
    end
    protected
    def seccion_prohibida
        puts "estas en la sección prohibida, solo profesores"
    end
end

gryffindor = CasaElemental.new
slytherin = CasaElemental.new
#gryffindor.salon_comun
#gryffindor.salon_comun es inaccesible, al ser "privado" (probar)
#solo peude ser accesado desde una clase similar o hija
#en este caso crearemos una subclase "Monnitor" que sera quien podra accesar 
#a los metodos privados de CasaElemental.
rodolfo = Monnitor.new
#rodolfo.salon_comun // no es posible usarla directamente
rodolfo.guiar #ejemplo private
harry = Howarts.new
harry.deambular #ejemplo public
snape = Proffesor.new #ejemplo de superusuario inverso?
snape.guiar
snape.reconocer
snape.taboo #ejemplo protected
#ahora crucemos datos
#rodolfo.agujero_en_la_pared // no funciona, no tiene los privilegois
#snape.agujero_en_la_pared // tampoco
#harry.agujero_en_la_pared // tampoco
puts "sigamos"
gets.chomp
snape.fisgonear
puts "y rodolfo?"
gets.chomp
#rodolfo.mirar // no sirve, private
rodolfo.curiosidad #interesante private>protected

#aqui he probado como una isntancia de clase de mayor "jerarquia" 
#puede acceder a metodos privados y protegidos. 
#en este ejecrcicio existen dos lugares "dificiles de alcanzar"
#el agujero en la pred, y la seccion prohibida