class Metodos_cadena
  def initialize(cadena)
    @cadena = cadena
  end
    def ejemplo1
      cadena1 = @cadena.upcase#Imprime la cadena almacenada en letra mayuscula
      puts cadena1
      cadena2 = @cadena.downcase#Imprime la cadena almacenada en letra minuscula
      puts cadena2
      cadena3 = @cadena.capitalize#Le aplica una mayuscula a la primela letra de la primera palabra
      puts cadena3
    end
    def ejemplo2
      @cadena.upcase!#Modiica la variable para que este en mayusculas
      puts @cadena
      @cadena.downcase!#Modiica la variable para que este en minusculas
      puts @cadena
      @cadena.capitalize!#Modiica la variable para que este en modo oración
      puts @cadena
    end
    def ejemplo3
      print "Ingrese primera cadena:"
      cadena1 = gets.chomp
      print "Ingrese segunda cadena:"
      cadena2 = gets.chomp
      if cadena1.length == cadena2.length#verifica si las cadenas tienen la misma cantidad de caracteres
        print cadena1, " y ", cadena2, " tienen la misma cantidad de caracteres: ", cadena1.length
      else
        if cadena1.length > cadena2.length#veridica cual cadena tiene la mayor cantidad de caracteres
          print cadena1, " tiene ", cadena1.length, " caracteres"
        else
          print cadena2, " tiene ", cadena2.length, " caracteres"
        end
      end
    end


end

imprime1 = Metodos_cadena.new("Ejemplo de cadena")
puts "Ejemplo de metodos string"
puts "-------------------------\nEjemplo 1"
puts imprime1.ejemplo1
puts "-------------------------\nEjemplo 2"
puts imprime1.ejemplo2
puts "-------------------------\nEjemplo 3"
puts imprime1.ejemplo3