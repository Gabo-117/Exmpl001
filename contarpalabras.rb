class PalabraContador
  def initialize(texto)
    @texto = texto
  end

  def contar_palabras_repetidas
    # Dividir el texto en palabras usando el espacio como delimitador
    palabras = @texto.downcase.split(/\W+/) # Usamos expresión regular para separar por cualquier carácter no alfanumérico

    # Crear un hash para contar las palabras
    conteo = Hash.new(0)

    # Contar cada palabra
    palabras.each do |palabra|
      conteo[palabra] += 1
    end

    # Filtrar las palabras que se repiten más de una vez
    conteo.select { |palabra, cantidad| cantidad > 1 }
  end
end

# Ejemplo de uso:
texto = "Perro perro perro hola hola la la la si no no pelota pelota."
contador = PalabraContador.new(texto)
resultados = contador.contar_palabras_repetidas

puts "Palabras repetidas:"
resultados.each do |palabra, cantidad|
  puts "#{palabra}: #{cantidad}"
end