# ahora @@ , con super, se puede pasar el valor de una variable @ a otra @ en la siguiente clase por herencia
#pero y sin super?
#con @@ puedes heredar una variable.
#pero no logre darle uso correcto a las variables de clase, los valores recorren todo
#no logra servirme como contador, o etiquetador de generaciones.
class Coche
    attr_accessor :gasolina, :nose, :contador_objetos

    @@nose = "info secreta"

    def initialize (gas)
        @@contador_objetos = 0
        puts "alpha (codigo padre) #{gasolina}"
        puts @gasolina = gas
        @gasolina = 50
        puts "alpha (codigo padre) #{gasolina}"
    end
    def contar
        @@contador_objetos
    end
end
class Tesla < Coche
    attr_accessor :gasolina

    def initialize (biodiesel)
        @@contador_objetos +=1
        puts "betha (codigo hijo)#{gasolina}"
        puts @gasolina = biodiesel
        @gasolina = 100
        puts "betha (codigo hijo) #{gasolina}"
    end
end
class BostonDynamic < Coche

    attr_accessor :gasolina

    def initialize (algo)
        super
            @@contador_objetos += 1
            puts "gamma (codigo hijo)#{gasolina}"
            puts @gasolina = algo
            @gasolina = 160
            puts "gamma (codigo hijo) #{gasolina}"
    end
    def mostrar_datos_ocultos
        @@nose
    end
end
class Dog < BostonDynamic
    def initialize (daigual)
        super
            @@contador_objetos += 1
    end
end
class Drone < Dog
    def initialize (daigual)
        super
        @@contador_objetos +=1
    end
end


aceite = 10
autito = Coche.new(aceite)
print "::#{autito.gasolina}::"
puts autito.contar
gets.chomp
pila = 5
autote = Tesla.new(pila)
print "::#{autote.gasolina}::"
puts autote.contar
gets.chomp
cosa = 1
autorrote = BostonDynamic.new(cosa)
print "::#{autorrote.gasolina}::"
print "Boston::"
puts autorrote.contar
gets.chomp

puts autorrote.mostrar_datos_ocultos
gets.chomp
doggo = Dog.new(cosa)
print "doggo ::"
puts doggo.contar
droni = Drone.new(cosa)
print "droni ::"
puts droni.contar

#analisar con diagramas T