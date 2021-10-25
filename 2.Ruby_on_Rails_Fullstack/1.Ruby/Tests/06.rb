numeros = [1,2,3,4,5,6]
puts "prep , numeros: #{numeros}"
puts "(...)"
numeros_par = numeros.delete_if {|numero| numero.odd?}
puts numeros_par
puts "pause , numeros: #{numeros}"
numeros.push(7)
puts numeros
puts "pause reverse"
puts numeros.reverse   #prueba reverse!
puts "pause"
puts numeros