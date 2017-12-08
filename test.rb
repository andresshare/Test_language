$variable_con_valor_global="variable con valor global"

class Detalles_ruby

	def initialize()
		@variable_instancia="variable de instancia"
	end

	def mensaje()

	#mensaje de puts
	puts"Mensaje de puts"
	#variable codigo local
	variable_codigo_local="variable_codigo_local"
	puts" -->  #{variable_codigo_local}"
	#variable message
	message ="variable message"
	puts"-->  #{message}"
	#potencia
	valor_numerico_potencia = 3**3
	puts" -->  #{valor_numerico_potencia}"
	#conversion to_i to_f to_s or to_string etc..
	numero ="five"
	numero = 5
	numero = numero.to_i
	puts "-->	Resultado de la conversion: #{numero}"

	#receive global variable and local variable
	puts "-->	Variable desde codigo local:#{variable_codigo_local} \n" 
		puts " Variable con valor global #{$variable_con_valor_global}"
		puts "-->  variable_instancia #{@variable_instancia}"
	end

	def cadenas()

	        #Join char and multyply .upcase .downcase  .lenght
		#encoding :utf-8
		cadena =" Cadena_uno"
		cadena << " cadena_dos" * 3
		puts " --> 	Union de una cadena #{cadena}"
	end

	def salida_datos()
		print "what's ur name?"
		nombre = gets.chomp
		puts " Your name is: #{nombre}"
		puts " Your name have #{nombre.length} letters"
	end

	def aritmetica()
		#presedencia aritmetica
		operacion = 20-10*2
		operacion_dos = (20-10)*2
		puts " resultado sin parentesis #{operacion}"
		puts " resultado con parentesis #{ operacion_dos}"
	end

	def cadenas_objetos()
		#object_id diferentes
		puts "cadena".object_id
		puts "cadena1".object_id
	end

	def condicional()

		var =1
		
		if var == 10
		print "Variable is 10"
		elsif var == 20
		print "Variable is 20"
		else
		print "U_U \n"
		end
	end

	def menu_rapido()

		print "Enter a number 1-10"
		grade = gets.chomp.to_i
		case grade
			when 1
	  		puts 'Well done!'
			when  5
		     puts 'Try harder!'
			when  10
			  puts 'You need help!!!'
			else
			  puts "u.u \n"
		end
	end

	
	def arreglos()
		arreglos_uno = [1,2,true]
		arreglos_dos = Array.new(5)
		arreglo_tres = %w[5,5,6,7]
		arreglo_tres << 8
		print "#{arreglos_uno}\n"
		print "#{arreglos_dos}\n"
		print "#{arreglo_tres}\n"

		#iterar arreglos each
		calificaciones = %w[10,8,8,8,10]
		suma = 0
		calificaciones.each.with_index do |calificacion ,posicion|
			puts " En la posicion #{posicion} ahora calificacion vale :#{calificacion}"
			suma+=calificacion.to_i
			print "el promedio de tus calificaciones es #{suma.to_f/calificacion.length}"
			#print calificacion.first
			#print calificacion.last
			#print calificacion.sample

		end
		end
		def rangos()
			(1..10).step(2).each do |numero|
			puts "#{numero}"
		end
		end
		def playlist()
			playlist =["first song", "second song" ,"third song"]
			playing = true
			index_song =0

			while (index_song< playlist.length) && playing
				puts"Reproduciendo #{playlist[index_song]}"
				index_song +=1
				print "coloca 0 para detener la reproducion: "
				respuesta= gets().chomp.to_i
				

					playing = respuesta !=0
			end
								
				
		end



		def iteradores()
		
			10.times do |i|
				puts i
			end
			1.upto(10) do |i|
				puts i
			end
		
			10.downto(1) do |i|
				puts i
			end

		end
		
		def arreglo()
			
			require 'matrix'
			#diagonal de una matrix
			matriz = Matrix[[7,8,9],[5,6,7],[8,9,0]]

			matriz.each(:diagonal) do |i|
				puts i
			end

		end

		def hash_rb()
			tutor={"nombre"=>"ander" , "numero" => 1, 2=>"dos" ,[]=> "arreglo" , simbolos: 10 }

			
			puts tutor["cursos"]=10
			puts tutor[[]]
			puts tutor[:simbolos]

			tutor.each do |clave , valor|
				puts"#{clave}esta guardado #{valor}"
			end
				
				puts " Obtener solo las claves #{tutor.keys}"
		end
		
	#end
	end
#Objeto mensaje
objeto = Detalles_ruby.new()
objeto.mensaje
objeto.cadenas
objeto.salida_datos
objeto.aritmetica
objeto.cadenas_objetos
objeto.condicional
objeto.menu_rapido
objeto.arreglos
objeto.rangos
objeto.playlist
objeto.iteradores
objeto.arreglo	
objeto.hash_rb