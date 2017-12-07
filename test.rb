
#variable global
#revisar
$variable_codigo_global ="Mensaje desde la variable global"

#clase mensaje
class Mensaje

	
	def initialize()
		#receive global variable
		
		#receive variable of instance
		@variable_instancia ="soy una variable de instancia"
	end
	
	#function
	def mensaje()
		
		#variable global
		variable_codigo_local="v_c_l"
		
		#Message of console
		puts "-->	Mensaje desde Puts \n"
		
		mensaje=" mensaje de la variable"
		
		puts "-->	Mensaje #{mensaje} \n"

		#variable pow
		
		valor_numerico_potencia = 2**2
		puts "-->	Potencia: #{valor_numerico_potencia} \n"
		
		#conversion to_i to_f to_s or to_string etc..
		numero ="five"
		numero = 5
		numero = numero.to_i
		puts "-->	Resultado de la conversion: #{numero}"
		
		#receive global variable and local variable
		puts "-->	Variable desde codigo local:#{variable_codigo_local} \n" 
		puts "-->	Variable local #{$variable_codigo_global} \n"
		puts "-->	Variable de instancia #{@variable_instancia} \n"


	end

	def cadenas()
		#Join char and multyply 
		cadena ="Unir"
		cadena << " cadenas" * 3
	end 


end
	
#objeto Mensaje
objeto = Mensaje.new()
objeto.mensaje

#objeto cadenas
objeto_cadenas = Mensaje.new()
objeto_cadenas.cadenas



gets();



