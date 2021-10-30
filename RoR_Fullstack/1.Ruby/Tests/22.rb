#sobrecargar sin super, sobreescribe el metodo
class Coche
    attr_accessor :gasolina
    def initialize (gas)
        puts "alpha (codigo padre) #{gasolina}"
        puts @gasolina = gas
        @gasolina = 50
        puts "alpha (codigo padre) #{gasolina}"
    end
end
class Tesla < Coche
    attr_accessor :gasolina
    def initialize (biodiesel)
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
            puts "gamma (codigo hijo)#{gasolina}"
            puts @gasolina = algo
            @gasolina = 160
            puts "gamma (codigo hijo) #{gasolina}"
    end
end

aceite = 10
autito = Coche.new(aceite)
puts "::#{autito.gasolina}::"
gets.chomp
pila = 5
autote = Tesla.new(pila)
puts "::#{autote.gasolina}::"
gets.chomp
#en el ejemplo anterior, la "gasolina" es sobrescrita por sobre la clase padre.
# al usar "super", no elimina el metodo padre, lo lee, e incorpora las nuevas lineas.
#sobrecargar con super, genera un merge.
cosa = 1
autorrote = BostonDynamic.new(cosa)
puts "::#{autorrote.gasolina}::"