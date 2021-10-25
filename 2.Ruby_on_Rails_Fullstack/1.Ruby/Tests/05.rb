numeros = [1,2,3,4,5,6]
numeros_par = numeros.map {|numero| numero.even?}
puts numeros_par
puts "pause , numeros: #{numeros} \n\n"

numeros_par = numeros.select {|numero| numero.even?}
puts numeros_par
puts "pause , numeros: #{numeros} \n\n"

numeros_par = numeros.delete_if {|numero| numero.odd?}
puts numeros_par
puts "pause , numeros: #{numeros} \n \n"