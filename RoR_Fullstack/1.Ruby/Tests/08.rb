print arreglo = ["aldo", "cristian", "francisca", "yoda", "han", "solo"]
puts ""
arreglo.shuffle!

puts arreglo.find_all {|elemento| elemento.length > 4 }
print "#{arreglo}\n"